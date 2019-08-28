import torch
import time
from utils import AverageMeter, accuracy, to_python_float


def train(train_loader, model, criterion, optimizer, epoch, delta_num):
    batch_time = AverageMeter()
    losses = AverageMeter()
    top1 = AverageMeter()
    top10 = AverageMeter()

    model.train()
    end = time.time()

    for i, (pc, delta) in enumerate(train_loader):
        pc = pc.cuda()
        delta = delta.cuda()
        
        output = model(pc, delta)
        #target = torch.nn.functional.one_hot(delta[-1], delta_num)
        target = delta[-1].view(-1)

        loss = criterion(output, target)

        optimizer.zero_grad()
        loss.backward()
        optimizer.step()

        prec1, prec10 = accuracy(output, target, topk=(1, 10))

        losses.update(to_python_float(loss), 1)
        top1.update(to_python_float(prec1), 1)
        top10.update(to_python_float(prec10), 1)
        batch_time.update((time.time() - end) / 10)
        end = time.time()

        if i % 300 == 0:
            print('Epoch: [{0}][{1}/{2}]\tTime {batch_time.val:.3f} ({batch_time.avg:.3f})\tLoss {loss.val:.10f} ({loss.avg:.4f})\tPrec@1 {top1.val:.3f} ({top1.avg:.3f})\tPrec@10 {top10.val:.3f} ({top10.avg:.3f})'.format(epoch, i, len(train_loader),batch_time=batch_time,loss=losses, top1=top1, top10=top10))
