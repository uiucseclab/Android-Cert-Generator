.class public Lcom/facebook/video/view/ImplementationEvents$PreparationBeginEvent;
.super Lcom/facebook/common/eventbus/TypedEvent;
.source "timestamp"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/common/eventbus/TypedEvent",
        "<",
        "Lcom/facebook/video/view/ImplementationEvents$PreparationBeginEvent$Handler;",
        ">;"
    }
.end annotation


# static fields
.field public static a:Lcom/facebook/video/view/ImplementationEvents$PreparationBeginEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/facebook/video/view/ImplementationEvents$PreparationBeginEvent;

    invoke-direct {v0}, Lcom/facebook/video/view/ImplementationEvents$PreparationBeginEvent;-><init>()V

    sput-object v0, Lcom/facebook/video/view/ImplementationEvents$PreparationBeginEvent;->a:Lcom/facebook/video/view/ImplementationEvents$PreparationBeginEvent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/facebook/common/eventbus/TypedEvent;-><init>()V

    .line 72
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/common/eventbus/TypedHandler;)V
    .locals 0

    .prologue
    .line 63
    check-cast p1, Lcom/facebook/video/engine/texview/InitializationSequenceLogger$Handler;

    .line 69
    invoke-virtual {p1}, Lcom/facebook/video/engine/texview/InitializationSequenceLogger$Handler;->f()V

    .line 70
    return-void
.end method
