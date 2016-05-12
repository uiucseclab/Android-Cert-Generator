.class public final Luk/co/chrisjenx/calligraphy/TypefaceUtils;
.super Ljava/lang/Object;
.source "TypefaceUtils.java"


# static fields
.field private static final sCachedFonts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static final sCachedSpans:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/graphics/Typeface;",
            "Luk/co/chrisjenx/calligraphy/CalligraphyTypefaceSpan;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Luk/co/chrisjenx/calligraphy/TypefaceUtils;->sCachedFonts:Ljava/util/HashMap;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Luk/co/chrisjenx/calligraphy/TypefaceUtils;->sCachedSpans:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method public static getSpan(Landroid/graphics/Typeface;)Luk/co/chrisjenx/calligraphy/CalligraphyTypefaceSpan;
    .locals 3
    .param p0, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 54
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 61
    :goto_0
    return-object v0

    .line 55
    :cond_0
    sget-object v2, Luk/co/chrisjenx/calligraphy/TypefaceUtils;->sCachedSpans:Ljava/util/HashMap;

    monitor-enter v2

    .line 56
    :try_start_0
    sget-object v1, Luk/co/chrisjenx/calligraphy/TypefaceUtils;->sCachedSpans:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 57
    new-instance v0, Luk/co/chrisjenx/calligraphy/CalligraphyTypefaceSpan;

    invoke-direct {v0, p0}, Luk/co/chrisjenx/calligraphy/CalligraphyTypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    .line 58
    .local v0, "span":Luk/co/chrisjenx/calligraphy/CalligraphyTypefaceSpan;
    sget-object v1, Luk/co/chrisjenx/calligraphy/TypefaceUtils;->sCachedSpans:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    monitor-exit v2

    goto :goto_0

    .line 62
    .end local v0    # "span":Luk/co/chrisjenx/calligraphy/CalligraphyTypefaceSpan;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 61
    :cond_1
    :try_start_1
    sget-object v1, Luk/co/chrisjenx/calligraphy/TypefaceUtils;->sCachedSpans:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Luk/co/chrisjenx/calligraphy/CalligraphyTypefaceSpan;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0
.end method

.method public static load(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 7
    .param p0, "assetManager"    # Landroid/content/res/AssetManager;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 31
    sget-object v3, Luk/co/chrisjenx/calligraphy/TypefaceUtils;->sCachedFonts:Ljava/util/HashMap;

    monitor-enter v3

    .line 33
    :try_start_0
    sget-object v4, Luk/co/chrisjenx/calligraphy/TypefaceUtils;->sCachedFonts:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 34
    invoke-static {p0, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 35
    .local v1, "typeface":Landroid/graphics/Typeface;
    sget-object v4, Luk/co/chrisjenx/calligraphy/TypefaceUtils;->sCachedFonts:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :try_start_1
    monitor-exit v3

    .line 43
    .end local v1    # "typeface":Landroid/graphics/Typeface;
    :goto_0
    return-object v1

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Calligraphy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t create asset from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Make sure you have passed in the correct path and file name."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    sget-object v4, Luk/co/chrisjenx/calligraphy/TypefaceUtils;->sCachedFonts:Ljava/util/HashMap;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    monitor-exit v3

    move-object v1, v2

    goto :goto_0

    .line 43
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    sget-object v2, Luk/co/chrisjenx/calligraphy/TypefaceUtils;->sCachedFonts:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;

    monitor-exit v3

    move-object v1, v2

    goto :goto_0

    .line 44
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
