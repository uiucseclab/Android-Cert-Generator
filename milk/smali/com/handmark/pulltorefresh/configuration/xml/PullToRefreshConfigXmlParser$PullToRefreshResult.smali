.class Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshConfigXmlParser$PullToRefreshResult;
.super Ljava/lang/Object;
.source "PullToRefreshConfigXmlParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshConfigXmlParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PullToRefreshResult"
.end annotation


# instance fields
.field public final googleStyleProgressLayoutClazzNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final googleStyleViewLayoutClazzNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final indicatorLayoutClazzNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final loadingLayoutClazzNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshConfigXmlParser$PullToRefreshResult;->loadingLayoutClazzNameMap:Ljava/util/Map;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshConfigXmlParser$PullToRefreshResult;->indicatorLayoutClazzNameMap:Ljava/util/Map;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshConfigXmlParser$PullToRefreshResult;->googleStyleViewLayoutClazzNameMap:Ljava/util/Map;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshConfigXmlParser$PullToRefreshResult;->googleStyleProgressLayoutClazzNameMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshConfigXmlParser$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshConfigXmlParser$1;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshConfigXmlParser$PullToRefreshResult;-><init>()V

    return-void
.end method
