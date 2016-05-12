.class Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode$XmlPullNodeContainer;
.super Ljava/lang/Object;
.source "XmlPullNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "XmlPullNodeContainer"
.end annotation


# instance fields
.field private node:Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;

.field private repeatLimit:I


# direct methods
.method public constructor <init>(Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;)V
    .locals 1
    .param p1, "node"    # Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;

    .prologue
    .line 169
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode$XmlPullNodeContainer;-><init>(Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;I)V

    .line 170
    return-void
.end method

.method public constructor <init>(Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;I)V
    .locals 1
    .param p1, "node"    # Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;
    .param p2, "repeatLimit"    # I

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    const-string v0, "XmlPullNode"

    invoke-static {p1, v0}, Lcom/handmark/pulltorefresh/library/internal/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    iput-object p1, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode$XmlPullNodeContainer;->node:Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;

    .line 179
    iput p2, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode$XmlPullNodeContainer;->repeatLimit:I

    .line 180
    return-void
.end method

.method private decreaseRepeatLimit()V
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode$XmlPullNodeContainer;->repeatLimit:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode$XmlPullNodeContainer;->repeatLimit:I

    .line 208
    return-void
.end method


# virtual methods
.method public takeXmlPullNode()Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 187
    iget v1, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode$XmlPullNodeContainer;->repeatLimit:I

    if-lez v1, :cond_0

    .line 188
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode$XmlPullNodeContainer;->decreaseRepeatLimit()V

    .line 189
    iget-object v1, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode$XmlPullNodeContainer;->node:Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;

    .line 200
    :goto_0
    return-object v1

    .line 193
    :cond_0
    iget v1, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode$XmlPullNodeContainer;->repeatLimit:I

    if-nez v1, :cond_1

    .line 194
    iget-object v1, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode$XmlPullNodeContainer;->node:Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;->getName()Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "tagName":Ljava/lang/String;
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tag \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' should not have more "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode$XmlPullNodeContainer;->repeatLimit:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nodes."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 200
    .end local v0    # "tagName":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode$XmlPullNodeContainer;->node:Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;

    goto :goto_0
.end method
