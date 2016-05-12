.class Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;
.super Ljava/lang/Object;
.source "XmlPullParserWrapper.java"

# interfaces
.implements Lorg/xmlpull/v1/XmlPullParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper$DocumentState;
    }
.end annotation


# instance fields
.field private final parser:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, "XmlPullParser"

    invoke-static {p1, v0}, Lcom/handmark/pulltorefresh/library/internal/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    .line 49
    return-void
.end method


# virtual methods
.method public defineEntityReplacementText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "entityName"    # Ljava/lang/String;
    .param p2, "replacementText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 271
    iget-object v0, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->defineEntityReplacementText(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method public getAttributeCount()I
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    return v0
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 362
    iget-object v0, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 357
    iget-object v0, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributePrefix(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 367
    iget-object v0, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeType(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 372
    iget-object v0, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 382
    iget-object v0, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 387
    iget-object v0, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColumnNumber()I
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getColumnNumber()I

    move-result v0

    return v0
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    return v0
.end method

.method public getEventType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 392
    iget-object v0, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    return v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getInputEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getInputEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceCount(I)I
    .locals 1
    .param p1, "depth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 277
    iget-object v0, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    move-result v0

    return v0
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
    .locals 1
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 282
    iget-object v0, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceUri(I)Ljava/lang/String;
    .locals 1
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 287
    iget-object v0, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceUri(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPositionDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 249
    iget-object v0, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextCharacters([I)[C
    .locals 1
    .param p1, "holderForStartAndLength"    # [I

    .prologue
    .line 327
    iget-object v0, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getTextCharacters([I)[C

    move-result-object v0

    return-object v0
.end method

.method public isAttributeDefault(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 377
    iget-object v0, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->isAttributeDefault(I)Z

    move-result v0

    return v0
.end method

.method public isComment()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;->getEventType()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmptyElementTag()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 347
    iget-object v0, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->isEmptyElementTag()Z

    move-result v0

    return v0
.end method

.method public isEndDocument()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 104
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;->getEventType()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEndTag()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;->getEventType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStartDocument()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;->getEventType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStartTag()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isText()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;->getEventType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWhitespace()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 317
    iget-object v0, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->isWhitespace()Z

    move-result v0

    return v0
.end method

.method public matchCurrentTagName(Ljava/lang/String;)Z
    .locals 1
    .param p1, "tagName"    # Ljava/lang/String;

    .prologue
    .line 226
    const-string v0, "Tag Name"

    invoke-static {p1, v0}, Lcom/handmark/pulltorefresh/library/internal/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public next()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 397
    iget-object v0, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    return v0
.end method

.method public nextEndTag()Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper$DocumentState;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;->next()I

    move-result v0

    .line 181
    .local v0, "evt":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 182
    sget-object v1, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper$DocumentState;->FOUNDTAG:Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper$DocumentState;

    .line 186
    :goto_0
    return-object v1

    .line 185
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 186
    sget-object v1, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper$DocumentState;->END:Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper$DocumentState;

    goto :goto_0
.end method

.method public nextEndTagByName(Ljava/lang/String;)Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper$DocumentState;
    .locals 2
    .param p1, "tagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;->nextEndTag()Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper$DocumentState;

    move-result-object v0

    .line 206
    .local v0, "documentState":Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper$DocumentState;
    sget-object v1, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper$DocumentState;->END:Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper$DocumentState;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper$DocumentState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 215
    .end local v0    # "documentState":Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper$DocumentState;
    :goto_0
    return-object v0

    .line 210
    .restart local v0    # "documentState":Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper$DocumentState;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;->matchCurrentTagName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    sget-object v0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper$DocumentState;->FOUNDTAG:Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper$DocumentState;

    goto :goto_0
.end method

.method public nextStartTag()Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper$DocumentState;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;->next()I

    move-result v0

    .line 129
    .local v0, "evt":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 130
    sget-object v1, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper$DocumentState;->FOUNDTAG:Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper$DocumentState;

    .line 134
    :goto_0
    return-object v1

    .line 133
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 134
    sget-object v1, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper$DocumentState;->END:Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper$DocumentState;

    goto :goto_0
.end method

.method public nextStartTagByName(Ljava/lang/String;)Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper$DocumentState;
    .locals 2
    .param p1, "tagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;->nextStartTag()Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper$DocumentState;

    move-result-object v0

    .line 154
    .local v0, "documentState":Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper$DocumentState;
    sget-object v1, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper$DocumentState;->END:Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper$DocumentState;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper$DocumentState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    .end local v0    # "documentState":Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper$DocumentState;
    :goto_0
    return-object v0

    .line 158
    .restart local v0    # "documentState":Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper$DocumentState;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;->matchCurrentTagName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    sget-object v0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper$DocumentState;->FOUNDTAG:Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper$DocumentState;

    goto :goto_0
.end method

.method public nextTag()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 418
    iget-object v0, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v0

    return v0
.end method

.method public nextText()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 413
    iget-object v0, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextToken()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 402
    iget-object v0, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    move-result v0

    return v0
.end method

.method public require(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 408
    iget-object v0, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1, p2, p3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 409
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 233
    iget-object v0, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 234
    return-void
.end method

.method public setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "inputEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public setInput(Ljava/io/Reader;)V
    .locals 1
    .param p1, "in"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 254
    iget-object v0, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 255
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 244
    iget-object v0, p0, Lcom/handmark/pulltorefresh/configuration/xml/XmlPullParserWrapper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 245
    return-void
.end method
