.class public Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$PublishResult;
.super Ljava/lang/Object;
.source "sk"


# instance fields
.field public a:Z

.field public b:Z

.field final synthetic c:Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector;


# direct methods
.method public constructor <init>(Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector;ZZ)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$PublishResult;->c:Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-boolean p2, p0, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$PublishResult;->a:Z

    .line 187
    iput-boolean p3, p0, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$PublishResult;->b:Z

    .line 188
    return-void
.end method
