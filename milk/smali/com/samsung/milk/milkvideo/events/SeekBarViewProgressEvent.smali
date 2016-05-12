.class public Lcom/samsung/milk/milkvideo/events/SeekBarViewProgressEvent;
.super Ljava/lang/Object;
.source "SeekBarViewProgressEvent.java"


# instance fields
.field private max:I

.field private progress:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "progress"    # I
    .param p2, "max"    # I

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/samsung/milk/milkvideo/events/SeekBarViewProgressEvent;->progress:I

    .line 9
    iput p2, p0, Lcom/samsung/milk/milkvideo/events/SeekBarViewProgressEvent;->max:I

    .line 10
    return-void
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/samsung/milk/milkvideo/events/SeekBarViewProgressEvent;->max:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/samsung/milk/milkvideo/events/SeekBarViewProgressEvent;->progress:I

    return v0
.end method

.method public setMax(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/samsung/milk/milkvideo/events/SeekBarViewProgressEvent;->max:I

    .line 26
    return-void
.end method

.method public setProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 17
    iput p1, p0, Lcom/samsung/milk/milkvideo/events/SeekBarViewProgressEvent;->progress:I

    .line 18
    return-void
.end method
