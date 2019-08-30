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

    j = 0
    prec1_c = 0
    prec10_c = 0
    for i, (pc, delta) in enumerate(train_loader):
        pc = pc.cuda()
        delta = delta.cuda()

        pc_input = pc[:-1]
        delta_input = delta[:-1]
        
        output = model(pc_input, delta_input)

        target = delta[-1].view(-1)

        loss = criterion(output, target)

        optimizer.zero_grad()
        loss.backward()
        optimizer.step()

        prec1, prec10 = accuracy(output, target, topk=(1, 10))

        prec1_c = (prec1_c * j + prec1) / (j + 1)
        prec10_c = (prec10_c * j + prec10) / (j + 1)
        j += 1

        losses.update(to_python_float(loss), 1)
        top1.update(to_python_float(prec1), 1)
        top10.update(to_python_float(prec10), 1)
        batch_time.update(time.time() - end)
        end = time.time()
        #break

        if i % 300 == 0:
            print('Epoch: [{0}][{1}/{2}]\tTime {batch_time.val:.3f} ({batch_time.avg:.3f})\tLoss {loss.val:.10f} ({loss.avg:.4f})\tPrec@1 {3:.3f} ({top1.avg:.3f})\tPrec@10 {4:.3f} ({top10.avg:.3f})'.format(epoch, i, len(train_loader), to_python_float(prec1_c), to_python_float(prec10_c), batch_time=batch_time,loss=losses, top1=top1, top10=top10))
            j = 0
            prec1_c = 0
            prec10_c = 0

