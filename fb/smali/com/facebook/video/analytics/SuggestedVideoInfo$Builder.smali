.class public Lcom/facebook/video/analytics/SuggestedVideoInfo$Builder;
.super Ljava/lang/Object;
.source "test-keys"


# instance fields
.field public final a:Z

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean p1, p0, Lcom/facebook/video/analytics/SuggestedVideoInfo$Builder;->a:Z

    .line 44
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/facebook/video/analytics/SuggestedVideoInfo$Builder;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/facebook/video/analytics/SuggestedVideoInfo$Builder;->b:Ljava/lang/String;

    .line 48
    return-object p0
.end method

.method public final a()Lcom/facebook/video/analytics/SuggestedVideoInfo;
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/facebook/video/analytics/SuggestedVideoInfo;

    invoke-direct {v0, p0}, Lcom/facebook/video/analytics/SuggestedVideoInfo;-><init>(Lcom/facebook/video/analytics/SuggestedVideoInfo$Builder;)V

    return-object v0
.end method
