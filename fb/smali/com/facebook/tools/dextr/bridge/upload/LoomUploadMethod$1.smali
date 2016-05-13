.class Lcom/facebook/tools/dextr/bridge/upload/LoomUploadMethod$1;
.super Ljava/lang/Object;
.source "soloader_init"

# interfaces
.implements Lcom/facebook/http/protocol/CountingOutputStreamWithProgress$ProgressListener;


# instance fields
.field final synthetic a:Lcom/facebook/tools/dextr/bridge/upload/LoomUploadMethod;


# direct methods
.method constructor <init>(Lcom/facebook/tools/dextr/bridge/upload/LoomUploadMethod;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/facebook/tools/dextr/bridge/upload/LoomUploadMethod$1;->a:Lcom/facebook/tools/dextr/bridge/upload/LoomUploadMethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 1

    .prologue
    .line 50
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 51
    return-void
.end method
