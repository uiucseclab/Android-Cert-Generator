.class Lcom/facebook/systrace/mainlooper/FbMainLooperTracer$1;
.super Ljava/lang/Object;
.source "onServiceConnected %s"

# interfaces
.implements Lcom/facebook/debug/mainlooper/MainLooperLogMessageListener;


# instance fields
.field final synthetic a:Lcom/facebook/systrace/mainlooper/FbMainLooperTracer;


# direct methods
.method constructor <init>(Lcom/facebook/systrace/mainlooper/FbMainLooperTracer;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/facebook/systrace/mainlooper/FbMainLooperTracer$1;->a:Lcom/facebook/systrace/mainlooper/FbMainLooperTracer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/facebook/systrace/mainlooper/FbMainLooperTracer$1;->a:Lcom/facebook/systrace/mainlooper/FbMainLooperTracer;

    invoke-virtual {v0, p1}, Lcom/facebook/systrace/mainlooper/MainLooperTracer;->a(Ljava/lang/String;)V

    .line 30
    return-void
.end method
