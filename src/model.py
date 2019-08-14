import torch
import torch.nn as nn
import torch.nn.functional as F

class LSTM(nn.Module):
    def __init__(self, embedding_dim, hidden_dim, delta_size, pc_size, out_size):
        super(LSTM, self).__init__()
        self.hidden_dim = hidden_dim
        
        self.pc_embeddings = nn.Embedding(pc_size, embedding_dim)
        self.delta_embeddings = nn.Embedding(delta_size, embedding_dim)

        self.lstm = nn.LSTM(embedding_dim * 2, hidden_dim)

        self.hidden2tag = nn.Linear(hidden_dim, out_size)

    def forward(self, pc, delta):
        pc_embeds = self.pc_embeddings(pc)
        delta_embeds = self.delta_embeddings(delta)
        embeds = torch.cat([pc_embeds, delta_embeds], 1)
        output, _ = self.lstm(embeds.view(len(pc), 1, -1))
        output = self.hidden2tag(output.view(len(pc), -1))
        output = F.log_softmax(output, dim=1)

        return output
        