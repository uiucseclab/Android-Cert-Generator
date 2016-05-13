.class public Lcom/facebook/rti/common/time/SystemClock;
.super Ljava/lang/Object;
.source "soft_error_category"


# static fields
.field private static final a:Lcom/facebook/rti/common/time/SystemClock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/facebook/rti/common/time/SystemClock;

    invoke-direct {v0}, Lcom/facebook/rti/common/time/SystemClock;-><init>()V

    sput-object v0, Lcom/facebook/rti/common/time/SystemClock;->a:Lcom/facebook/rti/common/time/SystemClock;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static b()Lcom/facebook/rti/common/time/SystemClock;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/facebook/rti/common/time/SystemClock;->a:Lcom/facebook/rti/common/time/SystemClock;

    return-object v0
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
