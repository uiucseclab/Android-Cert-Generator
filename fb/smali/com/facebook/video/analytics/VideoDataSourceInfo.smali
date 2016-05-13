.class public Lcom/facebook/video/analytics/VideoDataSourceInfo;
.super Ljava/lang/Object;
.source "tenc"


# instance fields
.field private a:Lcom/facebook/video/analytics/VideoAnalytics$StreamSourceType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget-object v0, Lcom/facebook/video/analytics/VideoAnalytics$StreamSourceType;->FROM_STREAM:Lcom/facebook/video/analytics/VideoAnalytics$StreamSourceType;

    iput-object v0, p0, Lcom/facebook/video/analytics/VideoDataSourceInfo;->a:Lcom/facebook/video/analytics/VideoAnalytics$StreamSourceType;

    .line 17
    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/video/analytics/VideoAnalytics$StreamSourceType;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/facebook/video/analytics/VideoDataSourceInfo;->a:Lcom/facebook/video/analytics/VideoAnalytics$StreamSourceType;

    return-object v0
.end method

.method public final a(Lcom/facebook/video/analytics/VideoAnalytics$StreamSourceType;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/facebook/video/analytics/VideoDataSourceInfo;->a:Lcom/facebook/video/analytics/VideoAnalytics$StreamSourceType;

    .line 21
    return-void
.end method
