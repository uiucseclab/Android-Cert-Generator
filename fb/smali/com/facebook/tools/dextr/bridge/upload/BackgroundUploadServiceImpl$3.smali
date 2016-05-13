.class Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl$3;
.super Ljava/lang/Object;
.source "soun"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService$BackgroundUploadListener;

.field final synthetic b:Ljava/io/File;

.field final synthetic c:Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;


# direct methods
.method constructor <init>(Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService$BackgroundUploadListener;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl$3;->c:Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;

    iput-object p2, p0, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl$3;->a:Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService$BackgroundUploadListener;

    iput-object p3, p0, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl$3;->b:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl$3;->a:Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService$BackgroundUploadListener;

    iget-object v1, p0, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl$3;->b:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService$BackgroundUploadListener;->b(Ljava/io/File;)V

    .line 168
    return-void
.end method
