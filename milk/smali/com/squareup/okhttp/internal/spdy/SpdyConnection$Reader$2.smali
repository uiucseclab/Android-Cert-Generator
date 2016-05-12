.class Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader$2;
.super Lcom/squareup/okhttp/internal/NamedRunnable;
.source "SpdyConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->ackSettingsLater()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;


# direct methods
.method varargs constructor <init>(Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 707
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader$2;->this$1:Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;

    invoke-direct {p0, p2, p3}, Lcom/squareup/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 710
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader$2;->this$1:Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/spdy/FrameWriter;->ackSettings()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 713
    :goto_0
    return-void

    .line 711
    :catch_0
    move-exception v0

    goto :goto_0
.end method
