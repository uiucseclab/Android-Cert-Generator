.class public Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshXmlConfiguration;
.super Ljava/lang/Object;
.source "PullToRefreshXmlConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshXmlConfiguration$1;,
        Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshXmlConfiguration$InstanceHolder;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final XML_PATH_ID:I


# instance fields
.field private initialized:Z

.field private node:Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshNode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshXmlConfiguration;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshXmlConfiguration;->LOG_TAG:Ljava/lang/String;

    .line 58
    sget v0, Lcom/handmark/pulltorefresh/library/R$xml;->pulltorefresh:I

    sput v0, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshXmlConfiguration;->XML_PATH_ID:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshXmlConfiguration;->node:Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshNode;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshXmlConfiguration;->initialized:Z

    .line 67
    return-void
.end method

.method synthetic constructor <init>(Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshXmlConfiguration$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshXmlConfiguration$1;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshXmlConfiguration;-><init>()V

    return-void
.end method

.method private assertInitialized()V
    .locals 3

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshXmlConfiguration;->notInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshXmlConfiguration;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has not initialized. Call init() method first."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshXmlConfiguration;
    .locals 1

    .prologue
    .line 73
    # invokes: Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshXmlConfiguration$InstanceHolder;->getInstance()Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshXmlConfiguration;
    invoke-static {}, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshXmlConfiguration$InstanceHolder;->access$100()Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshXmlConfiguration;

    move-result-object v0

    return-object v0
.end method

.method private isNodeNull()Z
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshXmlConfiguration;->node:Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshNode;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notInitialized()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshXmlConfiguration;->initialized:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getGoogleStyleProgressLayoutClazzName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "layoutCode"    # Ljava/lang/String;

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshXmlConfiguration;->assertInitialized()V

    .line 155
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshXmlConfiguration;->isNodeNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    const/4 v0, 0x0

    .line 158
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshXmlConfiguration;->node:Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshNode;

    invoke-virtual {v0, p1}, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshNode;->getGoogleStyleProgressLayoutClazzName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getGoogleStyleViewLayoutClazzName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "layoutCode"    # Ljava/lang/String;

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshXmlConfiguration;->assertInitialized()V

    .line 144
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshXmlConfiguration;->isNodeNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    const/4 v0, 0x0

    .line 147
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshXmlConfiguration;->node:Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshNode;

    invoke-virtual {v0, p1}, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshNode;->getGoogleStyleViewLayoutClazzName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIndicatorLayoutClazzName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "layoutCode"    # Ljava/lang/String;

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshXmlConfiguration;->assertInitialized()V

    .line 133
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshXmlConfiguration;->isNodeNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const/4 v0, 0x0

    .line 136
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshXmlConfiguration;->node:Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshNode;

    invoke-virtual {v0, p1}, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshNode;->getIndicatorLayoutClazzName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLoadingLayoutClazzName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "layoutCode"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshXmlConfiguration;->assertInitialized()V

    .line 122
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshXmlConfiguration;->isNodeNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    const/4 v0, 0x0

    .line 125
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshXmlConfiguration;->node:Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshNode;

    invoke-virtual {v0, p1}, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshNode;->getLoadingLayoutClazzName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    .line 85
    iget-boolean v7, p0, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshXmlConfiguration;->initialized:Z

    if-ne v7, v9, :cond_0

    .line 115
    :goto_0
    return-void

    .line 88
    :cond_0
    const-string v7, "Context"

    invoke-static {p1, v7}, Lcom/handmark/pulltorefresh/library/internal/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 92
    .local v5, "resources":Landroid/content/res/Resources;
    sget v7, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshXmlConfiguration;->XML_PATH_ID:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 94
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v6, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;

    invoke-direct {v6, v4}, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 97
    .local v6, "wrapper":Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;
    :try_start_0
    new-instance v7, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshConfigXmlParser;

    invoke-direct {v7, v6}, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshConfigXmlParser;-><init>(Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;)V

    invoke-virtual {v7}, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshConfigXmlParser;->parse()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshNode;

    iput-object v7, p0, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshXmlConfiguration;->node:Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshNode;

    .line 100
    invoke-static {p1}, Lcom/handmark/pulltorefresh/configuration/xml/ExtendedConfigXmlParserFactory;->createParser(Landroid/content/Context;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 101
    .local v2, "extendedXmlParser":Lorg/xmlpull/v1/XmlPullParser;
    if-eqz v2, :cond_1

    .line 102
    new-instance v3, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;

    invoke-direct {v3, v2}, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 104
    .local v3, "extendedXmlWrapper":Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;
    new-instance v7, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshConfigXmlParser;

    invoke-direct {v7, v3}, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshConfigXmlParser;-><init>(Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;)V

    invoke-virtual {v7}, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshConfigXmlParser;->parse()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshNode;

    .line 105
    .local v1, "extendedNode":Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshNode;
    iget-object v7, p0, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshXmlConfiguration;->node:Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshNode;

    invoke-virtual {v7, v1}, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshNode;->extendProperties(Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshNode;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 114
    .end local v1    # "extendedNode":Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshNode;
    .end local v2    # "extendedXmlParser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "extendedXmlWrapper":Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;
    :cond_1
    :goto_1
    iput-boolean v9, p0, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshXmlConfiguration;->initialized:Z

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v7, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshXmlConfiguration;->LOG_TAG:Ljava/lang/String;

    const-string v8, "It has failed to parse the xmlpullparser xml."

    invoke-static {v7, v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 109
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .line 110
    .local v0, "e":Ljava/io/IOException;
    sget-object v7, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshXmlConfiguration;->LOG_TAG:Ljava/lang/String;

    const-string v8, "It has failed to parse the xmlpullparser xml.\n "

    invoke-static {v7, v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
