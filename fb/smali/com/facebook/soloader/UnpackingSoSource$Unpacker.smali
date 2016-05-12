.class public abstract Lcom/facebook/soloader/UnpackingSoSource$Unpacker;
.super Ljava/lang/Object;
.source "video_cache_request_aborted"

# interfaces
.implements Ljava/io/Closeable;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;
.end method

.method protected abstract b()Lcom/facebook/soloader/UnpackingSoSource$InputDsoIterator;
.end method

.method public close()V
    .locals 0

    .prologue
    .line 129
    return-void
.end method
