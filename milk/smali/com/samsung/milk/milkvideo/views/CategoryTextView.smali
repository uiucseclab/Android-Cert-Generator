.class public Lcom/samsung/milk/milkvideo/views/CategoryTextView;
.super Landroid/widget/TextView;
.source "CategoryTextView.java"


# instance fields
.field private featured:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 13
    return-void
.end method


# virtual methods
.method public feature()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/views/CategoryTextView;->featured:Z

    .line 21
    const v0, 0x7f020084

    invoke-virtual {p0, v1, v1, v0, v1}, Lcom/samsung/milk/milkvideo/views/CategoryTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 22
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/CategoryTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lcom/samsung/milk/milkvideo/utils/DisplayHelper;->dp2Pixels(Landroid/content/res/Resources;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/views/CategoryTextView;->setCompoundDrawablePadding(I)V

    .line 23
    return-void
.end method

.method public isFeatured()Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/views/CategoryTextView;->featured:Z

    return v0
.end method
