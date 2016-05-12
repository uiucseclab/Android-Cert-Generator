.class public final Lcom/facebook/base/lwperf/DummyLightweightPerfEventsTracer;
.super Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;
.source "r"


# static fields
.field private static final a:Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;

    invoke-direct {v0}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;-><init>()V

    sput-object v0, Lcom/facebook/base/lwperf/DummyLightweightPerfEventsTracer;->a:Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/facebook/base/lwperf/DummyLightweightPerfEventsTracer;->a:Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;

    return-object v0
.end method
