.class Lcom/google/android/exoplayer/DefaultLoadControl$1;
.super Ljava/lang/Object;
.source "not releasing dso store lock for "

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/google/android/exoplayer/DefaultLoadControl;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer/DefaultLoadControl;Z)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/google/android/exoplayer/DefaultLoadControl$1;->b:Lcom/google/android/exoplayer/DefaultLoadControl;

    iput-boolean p2, p0, Lcom/google/android/exoplayer/DefaultLoadControl$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 256
    return-void
.end method
