import torch
import torch.nn as nn
import torch.nn.functional as F


class LSTM(nn.Module):
    def __init__(self, embedding_dim, hidden_dim, delta_size, pc_size, out_size):
        super(LSTM, self).__init__()
        self.hidden_dim = hidden_dim

        self.pc_embeddings = nn.Embedding(pc_size, embedding_dim)
        self.delta_embeddings = nn.Embedding(delta_size, embedding_dim)

        self.lstm0 = nn.LSTM(embedding_dim, embedding_dim)
        self.lstm1 = nn.LSTM(embedding_dim, hidden_dim)

        self.hidden2tag = nn.Linear(hidden_dim, out_size)

    def forward(self, pc, delta):
        pc_embeds = self.pc_embeddings(pc.long())
        delta_embeds = self.delta_embeddings(delta.long())

        embeds = pc_embeds
        if self.training:
            embeds = torch.cat([delta_embeds, embeds])

        output, _ = self.lstm0(embeds.view(len(embeds), 1, -1))
        output, _ = self.lstm1(output)
        #print(output.size())
        output = self.hidden2tag(output[-1])
        output = F.log_softmax(output, dim=1)

        return output
