.class public final Lcom/facebook/systrace/SystraceMessage;
.super Ljava/lang/Object;
.source "tfdt"


# static fields
.field private static final a:Lcom/facebook/systrace/SystraceMessage$Builder;

.field private static final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/facebook/systrace/SystraceMessage$RealBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lcom/facebook/systrace/SystraceMessage$Flusher;

.field private static final d:Lcom/facebook/systrace/SystraceMessage$Flusher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 13
    new-instance v0, Lcom/facebook/systrace/SystraceMessage$NoopBuilder;

    invoke-direct {v0}, Lcom/facebook/systrace/SystraceMessage$NoopBuilder;-><init>()V

    sput-object v0, Lcom/facebook/systrace/SystraceMessage;->a:Lcom/facebook/systrace/SystraceMessage$Builder;

    .line 15
    new-instance v0, Lcom/facebook/systrace/SystraceMessage$1;

    invoke-direct {v0}, Lcom/facebook/systrace/SystraceMessage$1;-><init>()V

    sput-object v0, Lcom/facebook/systrace/SystraceMessage;->b:Ljava/lang/ThreadLocal;

    .line 23
    new-instance v0, Lcom/facebook/systrace/SystraceMessage$BeginSectionFlusher;

    invoke-direct {v0}, Lcom/facebook/systrace/SystraceMessage$BeginSectionFlusher;-><init>()V

    sput-object v0, Lcom/facebook/systrace/SystraceMessage;->c:Lcom/facebook/systrace/SystraceMessage$Flusher;

    .line 24
    new-instance v0, Lcom/facebook/systrace/SystraceMessage$EndSectionFlusher;

    invoke-direct {v0}, Lcom/facebook/systrace/SystraceMessage$EndSectionFlusher;-><init>()V

    sput-object v0, Lcom/facebook/systrace/SystraceMessage;->d:Lcom/facebook/systrace/SystraceMessage$Flusher;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    return-void
.end method

.method public static a(J)Lcom/facebook/systrace/SystraceMessage$Builder;
    .locals 2

    .prologue
    .line 37
    sget-object v0, Lcom/facebook/systrace/SystraceMessage;->d:Lcom/facebook/systrace/SystraceMessage$Flusher;

    const-string v1, ""

    invoke-static {p0, p1, v0, v1}, Lcom/facebook/systrace/SystraceMessage;->a(JLcom/facebook/systrace/SystraceMessage$Flusher;Ljava/lang/String;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static a(JLcom/facebook/systrace/SystraceMessage$Flusher;Ljava/lang/String;)Lcom/facebook/systrace/SystraceMessage$Builder;
    .locals 2

    .prologue
    .line 42
    invoke-static {p0, p1}, Lcom/facebook/systrace/TraceConfig;->a(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    sget-object v0, Lcom/facebook/systrace/SystraceMessage;->a:Lcom/facebook/systrace/SystraceMessage$Builder;

    .line 46
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/facebook/systrace/SystraceMessage;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/systrace/SystraceMessage$RealBuilder;

    invoke-virtual {v0, p2, p3}, Lcom/facebook/systrace/SystraceMessage$RealBuilder;->a(Lcom/facebook/systrace/SystraceMessage$Flusher;Ljava/lang/String;)Lcom/facebook/systrace/SystraceMessage$RealBuilder;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(JLjava/lang/String;)Lcom/facebook/systrace/SystraceMessage$Builder;
    .locals 2

    .prologue
    .line 30
    sget-object v0, Lcom/facebook/systrace/SystraceMessage;->c:Lcom/facebook/systrace/SystraceMessage$Flusher;

    invoke-static {p0, p1, v0, p2}, Lcom/facebook/systrace/SystraceMessage;->a(JLcom/facebook/systrace/SystraceMessage$Flusher;Ljava/lang/String;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v0

    return-object v0
.end method
