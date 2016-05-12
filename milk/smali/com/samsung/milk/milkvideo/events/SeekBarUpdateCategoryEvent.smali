.class public Lcom/samsung/milk/milkvideo/events/SeekBarUpdateCategoryEvent;
.super Ljava/lang/Object;
.source "SeekBarUpdateCategoryEvent.java"


# instance fields
.field private categorySize:I

.field private index:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "categorySize"    # I

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/samsung/milk/milkvideo/events/SeekBarUpdateCategoryEvent;->index:I

    .line 9
    iput p2, p0, Lcom/samsung/milk/milkvideo/events/SeekBarUpdateCategoryEvent;->categorySize:I

    .line 10
    return-void
.end method


# virtual methods
.method public getCategorySize()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/samsung/milk/milkvideo/events/SeekBarUpdateCategoryEvent;->categorySize:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/samsung/milk/milkvideo/events/SeekBarUpdateCategoryEvent;->index:I

    return v0
.end method

.method public setCategorySize(I)V
    .locals 0
    .param p1, "categorySize"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/samsung/milk/milkvideo/events/SeekBarUpdateCategoryEvent;->categorySize:I

    .line 26
    return-void
.end method

.method public setIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 17
    iput p1, p0, Lcom/samsung/milk/milkvideo/events/SeekBarUpdateCategoryEvent;->index:I

    .line 18
    return-void
.end method
