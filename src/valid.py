import torch
import torch.nn as nn
import time
from utils import AverageMeter, accuracy, to_python_float

def validate(val_loader, model, criterion):
    batch_time = AverageMeter()
    losses = AverageMeter()
    top1 = AverageMeter()
    top10 = AverageMeter()

    model.eval()

    end = time.time()

    for i, (pc, delta) in enumerate(val_loader):
        with torch.no_grad():
            output = model(pc, delta)
            loss = criterion(output, delta)

        prec1, prec10 = accuracy(output, delta, topk=(1, 10))

        losses.update(to_python_float(loss), pc.size(0))
        top1.update(to_python_float(prec1), pc.size(0))
        top10.update(to_python_float(prec10), pc.size(0))
        batch_time.update(time.time() - end)

        end = time.time()

        if i % 10 == 0:
            print('Test: [{0}/{1}]\t'
                  'Time {batch_time.val:.3f} ({batch_time.avg:.3f})\t'
                  'Loss {loss.val:.4f} ({loss.avg:.4f})\t'
                  'Prec@1 {top1.val:.3f} ({top1.avg:.3f})\t'
                  'Prec@5 {top10.val:.3f} ({top10.avg:.3f})'.format(
                      i, len(val_loader),
                      batch_time=batch_time, loss=losses,
                      top1=top1, top10=top10))

    print(' * Prec@1 {top1.avg:.3f} Prec@10 {top10.avg:.3f}'
          .format(top1=top1, top10=top10))

    return top1.avg
