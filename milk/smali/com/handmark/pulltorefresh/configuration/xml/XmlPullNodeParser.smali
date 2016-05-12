.class abstract Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNodeParser;
.super Ljava/lang/Object;
.source "XmlPullNodeParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private isParsed:Z

.field private final parser:Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;

.field private final rootNode:Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;


# direct methods
.method public constructor <init>(Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;)V
    .locals 1
    .param p1, "parser"    # Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;

    .prologue
    .line 46
    .local p0, "this":Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNodeParser;, "Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNodeParser<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNodeParser;->isParsed:Z

    .line 47
    const-string v0, "XmlPullParser"

    invoke-static {p1, v0}, Lcom/handmark/pulltorefresh/library/internal/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNodeParser;->parser:Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;

    .line 49
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNodeParser;->generateRootNode()Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNodeParser;->rootNode:Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;

    .line 50
    return-void
.end method

.method private parseInternal(Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;)V
    .locals 4
    .param p1, "currentNode"    # Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNodeParser;, "Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNodeParser<TR;>;"
    invoke-virtual {p1}, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;->getCallback()Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode$XmlPullNodeCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNodeParser;->parser:Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;

    invoke-interface {v2, v3}, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode$XmlPullNodeCallback;->process(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 102
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNodeParser;->parser:Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;->isEndDocument()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "XML document is invalid."

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 107
    :cond_1
    iget-object v2, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNodeParser;->parser:Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;->isEndTag()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNodeParser;->parser:Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;

    invoke-virtual {p1}, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;->matchCurrentTagName(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 125
    return-void

    .line 112
    :cond_2
    iget-object v2, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNodeParser;->parser:Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;->next()I

    .line 115
    iget-object v2, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNodeParser;->parser:Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;->isStartTag()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    iget-object v2, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNodeParser;->parser:Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;->getName()Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "currentTagName":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;->getChild(Ljava/lang/String;)Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;

    move-result-object v0

    .line 119
    .local v0, "childNode":Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;
    if-eqz v0, :cond_0

    .line 121
    invoke-direct {p0, v0}, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNodeParser;->parseInternal(Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract generateRootNode()Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;
.end method

.method protected abstract getResult()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation
.end method

.method public final parse()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNodeParser;, "Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNodeParser<TR;>;"
    const/4 v3, 0x1

    .line 65
    iget-boolean v2, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNodeParser;->isParsed:Z

    if-ne v2, v3, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNodeParser;->getResult()Ljava/lang/Object;

    move-result-object v2

    .line 81
    :goto_0
    return-object v2

    .line 72
    :cond_0
    iget-object v2, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNodeParser;->rootNode:Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;->getName()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "rootName":Ljava/lang/String;
    iget-object v2, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNodeParser;->parser:Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;

    invoke-virtual {v2, v1}, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;->nextStartTagByName(Ljava/lang/String;)Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper$DocumentState;

    move-result-object v0

    .line 75
    .local v0, "documentState":Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper$DocumentState;
    sget-object v2, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper$DocumentState;->END:Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper$DocumentState;

    invoke-virtual {v2, v0}, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper$DocumentState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tag has not found."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    :cond_1
    iget-object v2, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNodeParser;->rootNode:Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;

    invoke-direct {p0, v2}, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNodeParser;->parseInternal(Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;)V

    .line 80
    iput-boolean v3, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNodeParser;->isParsed:Z

    .line 81
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNodeParser;->getResult()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method
