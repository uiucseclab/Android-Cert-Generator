.class Lcom/handmark/pulltorefresh/configuration/xml/ExtendedConfigXmlParserFactory;
.super Ljava/lang/Object;
.source "ExtendedXmlConfigParserFactory.java"


# static fields
.field private static final DEFAULT_ENCODING_TYPE:Ljava/lang/String; = "utf-8"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final XML_PATH_IN_ASSETS:Ljava/lang/String; = "pulltorefresh.xml"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/handmark/pulltorefresh/configuration/xml/ExtendedConfigXmlParserFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/handmark/pulltorefresh/configuration/xml/ExtendedConfigXmlParserFactory;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createParser(Landroid/content/Context;)Lorg/xmlpull/v1/XmlPullParser;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 51
    .local v0, "am":Landroid/content/res/AssetManager;
    const/4 v3, 0x0

    .line 53
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    const-string v4, "pulltorefresh.xml"

    invoke-virtual {v0, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 54
    .local v2, "is":Ljava/io/InputStream;
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 55
    const-string v4, "utf-8"

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 74
    .end local v2    # "is":Ljava/io/InputStream;
    :goto_0
    return-object v3

    .line 57
    :catch_0
    move-exception v1

    .line 58
    .local v1, "e":Ljava/io/FileNotFoundException;
    sget-object v4, Lcom/handmark/pulltorefresh/configuration/xml/ExtendedConfigXmlParserFactory;->LOG_TAG:Ljava/lang/String;

    const-string v5, "The configuration file \'assets/pulltorefresh.xml\' is missing. But the file is just an option. It is necessary only if you want to customize something in Pull To Refresh."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v3, 0x0

    .line 69
    goto :goto_0

    .line 61
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 62
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v4, Lcom/handmark/pulltorefresh/configuration/xml/ExtendedConfigXmlParserFactory;->LOG_TAG:Ljava/lang/String;

    const-string v5, "The error occurs below when generating parser."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    const/4 v3, 0x0

    .line 69
    goto :goto_0

    .line 65
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v1

    .line 66
    .local v1, "e":Ljava/io/IOException;
    sget-object v4, Lcom/handmark/pulltorefresh/configuration/xml/ExtendedConfigXmlParserFactory;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Loading pulltorefresh.xml file has failed."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    const/4 v3, 0x0

    goto :goto_0
.end method
