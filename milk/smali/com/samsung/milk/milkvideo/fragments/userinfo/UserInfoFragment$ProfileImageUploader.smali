.class public Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$ProfileImageUploader;
.super Ljava/lang/Object;
.source "UserInfoFragment.java"

# interfaces
.implements Lcom/squareup/picasso/Target;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProfileImageUploader"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$ProfileImageUploader;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "errorDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 306
    return-void
.end method

.method public onBitmapLoaded(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "from"    # Lcom/squareup/picasso/Picasso$LoadedFrom;

    .prologue
    .line 298
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 299
    .local v1, "stream":Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x32

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 300
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 301
    .local v0, "bytes":[B
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$ProfileImageUploader;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;->profileImageData:Ljava/lang/String;

    .line 302
    return-void
.end method

.method public onPrepareLoad(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "placeHolderDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 310
    return-void
.end method
