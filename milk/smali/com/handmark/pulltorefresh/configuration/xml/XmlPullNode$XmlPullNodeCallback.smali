.class public interface abstract Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode$XmlPullNodeCallback;
.super Ljava/lang/Object;
.source "XmlPullNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/handmark/pulltorefresh/configuration/xml/XmlPullNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "XmlPullNodeCallback"
.end annotation


# virtual methods
.method public abstract process(Lorg/xmlpull/v1/XmlPullParser;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
