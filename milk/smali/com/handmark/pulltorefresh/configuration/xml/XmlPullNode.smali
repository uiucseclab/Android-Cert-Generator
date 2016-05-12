.class Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;
.super Ljava/lang/Object;
.source "XmlPullNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode$XmlPullNodeContainer;,
        Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode$XmlPullNodeCallback;
    }
.end annotation


# static fields
.field public static final INFINITE:I = -0x1

.field private static final nullCallback:Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode$XmlPullNodeCallback;


# instance fields
.field private final callback:Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode$XmlPullNodeCallback;

.field private final children:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode$XmlPullNodeContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final tagName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode$1;

    invoke-direct {v0}, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode$1;-><init>()V

    sput-object v0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;->nullCallback:Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode$XmlPullNodeCallback;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "tagName"    # Ljava/lang/String;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;-><init>(Ljava/lang/String;Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode$XmlPullNodeCallback;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode$XmlPullNodeCallback;)V
    .locals 2
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode$XmlPullNodeCallback;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;->children:Ljava/util/Map;

    .line 77
    const-string v0, "Tag Name"

    invoke-static {p1, v0}, Lcom/handmark/pulltorefresh/library/internal/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iput-object p1, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;->tagName:Ljava/lang/String;

    .line 79
    if-nez p2, :cond_0

    sget-object p2, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;->nullCallback:Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode$XmlPullNodeCallback;

    .end local p2    # "callback":Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode$XmlPullNodeCallback;
    :cond_0
    iput-object p2, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;->callback:Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode$XmlPullNodeCallback;

    .line 80
    return-void
.end method


# virtual methods
.method public addChildNode(Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;)Z
    .locals 1
    .param p1, "node"    # Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;

    .prologue
    .line 94
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;->addChildNode(Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;I)Z

    move-result v0

    return v0
.end method

.method public addChildNode(Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;I)Z
    .locals 4
    .param p1, "node"    # Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;
    .param p2, "repeatLimit"    # I

    .prologue
    .line 104
    iget-object v1, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;->children:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode$XmlPullNodeContainer;

    .line 105
    .local v0, "pullNodeContainer":Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode$XmlPullNodeContainer;
    if-eqz v0, :cond_0

    .line 106
    const/4 v1, 0x0

    .line 111
    :goto_0
    return v1

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;->children:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode$XmlPullNodeContainer;

    invoke-direct {v3, p1, p2}, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode$XmlPullNodeContainer;-><init>(Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;I)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getCallback()Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode$XmlPullNodeCallback;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;->callback:Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode$XmlPullNodeCallback;

    return-object v0
.end method

.method public getChild(Ljava/lang/String;)Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;
    .locals 2
    .param p1, "tagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 120
    iget-object v1, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;->children:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode$XmlPullNodeContainer;

    .line 121
    .local v0, "pullNodeContainer":Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode$XmlPullNodeContainer;
    if-nez v0, :cond_0

    .line 122
    const/4 v1, 0x0

    .line 124
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode$XmlPullNodeContainer;->takeXmlPullNode()Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;

    move-result-object v1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;->tagName:Ljava/lang/String;

    return-object v0
.end method
