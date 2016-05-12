.class Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshXmlConfiguration$InstanceHolder;
.super Ljava/lang/Object;
.source "PullToRefreshXmlConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshXmlConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final instance:Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshXmlConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshXmlConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshXmlConfiguration;-><init>(Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshXmlConfiguration$1;)V

    sput-object v0, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshXmlConfiguration$InstanceHolder;->instance:Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshXmlConfiguration;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshXmlConfiguration;
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshXmlConfiguration$InstanceHolder;->getInstance()Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshXmlConfiguration;

    move-result-object v0

    return-object v0
.end method

.method private static getInstance()Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshXmlConfiguration;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshXmlConfiguration$InstanceHolder;->instance:Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshXmlConfiguration;

    return-object v0
.end method
