.class Lcom/facebook/systrace/SystraceMessage$BeginSectionFlusher;
.super Ljava/lang/Object;
.source "tfdt"

# interfaces
.implements Lcom/facebook/systrace/SystraceMessage$Flusher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/StringBuilder;)V
    .locals 1

    .prologue
    .line 178
    .line 44
    sget-boolean v0, Lcom/facebook/systrace/TraceDirect;->b:Z

    if-eqz v0, :cond_0

    .line 49
    .line 179
    :goto_0
    return-void

    .line 48
    :cond_0
    invoke-static {p1}, Lcom/facebook/systrace/TraceDirect;->nativeBeginSectionWithArgs(Ljava/lang/StringBuilder;)V

    goto :goto_0
.end method
