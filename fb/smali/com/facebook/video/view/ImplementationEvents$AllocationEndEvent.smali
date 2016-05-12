.class public Lcom/facebook/video/view/ImplementationEvents$AllocationEndEvent;
.super Lcom/facebook/common/eventbus/TypedEvent;
.source "timestamp"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/common/eventbus/TypedEvent",
        "<",
        "Lcom/facebook/video/view/ImplementationEvents$AllocationEndEvent$Handler;",
        ">;"
    }
.end annotation


# static fields
.field public static a:Lcom/facebook/video/view/ImplementationEvents$AllocationEndEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/facebook/video/view/ImplementationEvents$AllocationEndEvent;

    invoke-direct {v0}, Lcom/facebook/video/view/ImplementationEvents$AllocationEndEvent;-><init>()V

    sput-object v0, Lcom/facebook/video/view/ImplementationEvents$AllocationEndEvent;->a:Lcom/facebook/video/view/ImplementationEvents$AllocationEndEvent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/facebook/common/eventbus/TypedEvent;-><init>()V

    .line 51
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/common/eventbus/TypedHandler;)V
    .locals 0

    .prologue
    .line 42
    check-cast p1, Lcom/facebook/video/engine/texview/InitializationSequenceLogger$Handler;

    .line 48
    invoke-virtual {p1}, Lcom/facebook/video/engine/texview/InitializationSequenceLogger$Handler;->e()V

    .line 49
    return-void
.end method
