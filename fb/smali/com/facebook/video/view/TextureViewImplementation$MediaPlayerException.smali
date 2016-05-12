.class public Lcom/facebook/video/view/TextureViewImplementation$MediaPlayerException;
.super Ljava/lang/Exception;
.source "onPageFinished %s"


# instance fields
.field public final extra:I

.field public final what:I


# direct methods
.method public constructor <init>(II)V
    .locals 3

    .prologue
    .line 417
    const-string v0, "MediaPlayer exception: %d (extra info: %d)"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/common/stringformat/StringFormatUtil;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 420
    iput p1, p0, Lcom/facebook/video/view/TextureViewImplementation$MediaPlayerException;->what:I

    .line 421
    iput p2, p0, Lcom/facebook/video/view/TextureViewImplementation$MediaPlayerException;->extra:I

    .line 422
    return-void
.end method
