.class public final Lcom/facebook/soloader/UnpackingSoSource$InputDso;
.super Ljava/lang/Object;
.source "video_cache_request_aborted"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final a:Lcom/facebook/soloader/UnpackingSoSource$Dso;

.field public final b:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lcom/facebook/soloader/UnpackingSoSource$Dso;Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/facebook/soloader/UnpackingSoSource$InputDso;->a:Lcom/facebook/soloader/UnpackingSoSource$Dso;

    .line 103
    iput-object p2, p0, Lcom/facebook/soloader/UnpackingSoSource$InputDso;->b:Ljava/io/InputStream;

    .line 104
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/facebook/soloader/UnpackingSoSource$InputDso;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 109
    return-void
.end method
