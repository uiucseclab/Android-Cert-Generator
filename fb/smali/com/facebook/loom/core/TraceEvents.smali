.class public final Lcom/facebook/loom/core/TraceEvents;
.super Ljava/lang/Object;
.source "unknown stream status from rtmp ret="


# static fields
.field private static final a:Lcom/facebook/loom/core/AtomicIntegerBitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/facebook/loom/core/AtomicIntegerBitSet;

    invoke-direct {v0}, Lcom/facebook/loom/core/AtomicIntegerBitSet;-><init>()V

    sput-object v0, Lcom/facebook/loom/core/TraceEvents;->a:Lcom/facebook/loom/core/AtomicIntegerBitSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Z
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/facebook/loom/core/TraceEvents;->a:Lcom/facebook/loom/core/AtomicIntegerBitSet;

    invoke-virtual {v0, p0}, Lcom/facebook/loom/core/AtomicIntegerBitSet;->c(I)Z

    move-result v0

    return v0
.end method

.method static b(I)V
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/facebook/loom/core/TraceEvents;->a:Lcom/facebook/loom/core/AtomicIntegerBitSet;

    invoke-virtual {v0, p0}, Lcom/facebook/loom/core/AtomicIntegerBitSet;->a(I)V

    .line 18
    return-void
.end method

.method static c(I)V
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/facebook/loom/core/TraceEvents;->a:Lcom/facebook/loom/core/AtomicIntegerBitSet;

    invoke-virtual {v0, p0}, Lcom/facebook/loom/core/AtomicIntegerBitSet;->b(I)V

    .line 22
    return-void
.end method
