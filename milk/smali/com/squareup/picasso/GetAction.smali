.class Lcom/squareup/picasso/GetAction;
.super Lcom/squareup/picasso/Action;
.source "GetAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/picasso/Action",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Request;ZLjava/lang/String;Ljava/lang/Object;)V
    .locals 10
    .param p1, "picasso"    # Lcom/squareup/picasso/Picasso;
    .param p2, "data"    # Lcom/squareup/picasso/Request;
    .param p3, "skipCache"    # Z
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "tag"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 22
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v6, v5

    move-object v7, v2

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/squareup/picasso/Action;-><init>(Lcom/squareup/picasso/Picasso;Ljava/lang/Object;Lcom/squareup/picasso/Request;ZZILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    return-void
.end method


# virtual methods
.method complete(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
    .locals 0
    .param p1, "result"    # Landroid/graphics/Bitmap;
    .param p2, "from"    # Lcom/squareup/picasso/Picasso$LoadedFrom;

    .prologue
    .line 26
    return-void
.end method

.method public error()V
    .locals 0

    .prologue
    .line 29
    return-void
.end method
