.class final Lcom/squareup/picasso/TargetAction;
.super Lcom/squareup/picasso/Action;
.source "TargetAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/picasso/Action",
        "<",
        "Lcom/squareup/picasso/Target;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Target;Lcom/squareup/picasso/Request;ZILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 10
    .param p1, "picasso"    # Lcom/squareup/picasso/Picasso;
    .param p2, "target"    # Lcom/squareup/picasso/Target;
    .param p3, "data"    # Lcom/squareup/picasso/Request;
    .param p4, "skipCache"    # Z
    .param p5, "errorResId"    # I
    .param p6, "errorDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p7, "key"    # Ljava/lang/String;
    .param p8, "tag"    # Ljava/lang/Object;

    .prologue
    .line 25
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/squareup/picasso/Action;-><init>(Lcom/squareup/picasso/Picasso;Ljava/lang/Object;Lcom/squareup/picasso/Request;ZZILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    return-void
.end method


# virtual methods
.method complete(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
    .locals 5
    .param p1, "result"    # Landroid/graphics/Bitmap;
    .param p2, "from"    # Lcom/squareup/picasso/Picasso$LoadedFrom;

    .prologue
    .line 29
    if-nez p1, :cond_0

    .line 30
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Attempted to complete action with no result!\n%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    .line 31
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/squareup/picasso/TargetAction;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/Target;

    .line 34
    .local v0, "target":Lcom/squareup/picasso/Target;
    if-eqz v0, :cond_1

    .line 35
    invoke-interface {v0, p1, p2}, Lcom/squareup/picasso/Target;->onBitmapLoaded(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V

    .line 36
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Target callback must not recycle bitmap!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 40
    :cond_1
    return-void
.end method

.method error()V
    .locals 3

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/squareup/picasso/TargetAction;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/Target;

    .line 44
    .local v0, "target":Lcom/squareup/picasso/Target;
    if-eqz v0, :cond_0

    .line 45
    iget v1, p0, Lcom/squareup/picasso/TargetAction;->errorResId:I

    if-eqz v1, :cond_1

    .line 46
    iget-object v1, p0, Lcom/squareup/picasso/TargetAction;->picasso:Lcom/squareup/picasso/Picasso;

    iget-object v1, v1, Lcom/squareup/picasso/Picasso;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/squareup/picasso/TargetAction;->errorResId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/squareup/picasso/Target;->onBitmapFailed(Landroid/graphics/drawable/Drawable;)V

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    iget-object v1, p0, Lcom/squareup/picasso/TargetAction;->errorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v1}, Lcom/squareup/picasso/Target;->onBitmapFailed(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
