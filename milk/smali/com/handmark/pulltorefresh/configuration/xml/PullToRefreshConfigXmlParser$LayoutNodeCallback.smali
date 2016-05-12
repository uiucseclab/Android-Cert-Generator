.class Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshConfigXmlParser$LayoutNodeCallback;
.super Ljava/lang/Object;
.source "PullToRefreshConfigXmlParser.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode$XmlPullNodeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshConfigXmlParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LayoutNodeCallback"
.end annotation


# instance fields
.field private layoutClazzNameMap:Ljava/util/Map;
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
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "layoutClazzNameMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const-string v0, "Class Map"

    invoke-static {p1, v0}, Lcom/handmark/pulltorefresh/library/internal/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iput-object p1, p0, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshConfigXmlParser$LayoutNodeCallback;->layoutClazzNameMap:Ljava/util/Map;

    .line 116
    return-void
.end method


# virtual methods
.method public process(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    .line 126
    .local v2, "attributesCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_2

    .line 127
    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "attributeName":Ljava/lang/String;
    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "attributeValue":Ljava/lang/String;
    const-string v5, "name"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 132
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 126
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 137
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, "clazzName":Ljava/lang/String;
    iget-object v5, p0, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshConfigXmlParser$LayoutNodeCallback;->layoutClazzNameMap:Ljava/util/Map;

    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .end local v0    # "attributeName":Ljava/lang/String;
    .end local v1    # "attributeValue":Ljava/lang/String;
    .end local v3    # "clazzName":Ljava/lang/String;
    :cond_2
    return-void
.end method
