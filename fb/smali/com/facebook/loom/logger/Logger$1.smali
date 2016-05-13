.class final Lcom/facebook/loom/logger/Logger$1;
.super Ljava/lang/ThreadLocal;
.source "use_ssl"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lcom/facebook/loom/logger/LogEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected final initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    .line 43
    new-instance v0, Lcom/facebook/loom/logger/LogEntry;

    invoke-direct {v0}, Lcom/facebook/loom/logger/LogEntry;-><init>()V

    return-object v0
.end method
