.class Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayoutFactory;
.super Ljava/lang/Object;
.source "GoogleStyleViewLayoutFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayoutFactory$DefaultGoogleStyleViewLayoutFactory;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayoutFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayoutFactory;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    return-void
.end method

.method public static createGoogleStyleViewLayout(Ljava/lang/Class;Landroid/content/Context;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/content/res/TypedArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;",
            ">;",
            "Landroid/content/Context;",
            "Landroid/content/res/TypedArray;",
            ")",
            "Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;>;"
    const/4 v0, 0x0

    .line 95
    .local v0, "layout":Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;
    if-nez p0, :cond_0

    .line 96
    sget-object v1, Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayoutFactory;->LOG_TAG:Ljava/lang/String;

    const-string v2, "The Class token of the GoogleStyleViewLayout is missing. Default google style view layout will be used."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const-string v1, ""

    invoke-static {v1}, Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayoutFactory$DefaultGoogleStyleViewLayoutFactory;->createGoogleStyleViewLayoutClazz(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 100
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayoutFactory;->tryNewInstance(Ljava/lang/Class;Landroid/content/Context;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;

    move-result-object v0

    .line 103
    if-nez v0, :cond_1

    .line 104
    invoke-static {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayoutFactory$DefaultGoogleStyleViewLayoutFactory;->createGoogleStyleViewLayout(Ljava/lang/Class;Landroid/content/Context;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;

    move-result-object v0

    .line 107
    :cond_1
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;->setVisibility(I)V

    .line 108
    return-object v0
.end method

.method public static createGoogleStyleViewLayout(Ljava/lang/String;Landroid/content/Context;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;
    .locals 2
    .param p0, "layoutCode"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 82
    invoke-static {p0}, Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayoutFactory;->createGoogleStyleViewLayoutClazz(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 83
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;>;"
    invoke-static {v0, p1, p2}, Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayoutFactory;->createGoogleStyleViewLayout(Ljava/lang/Class;Landroid/content/Context;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;

    move-result-object v1

    return-object v1
.end method

.method public static createGoogleStyleViewLayoutClazz(Ljava/lang/String;)Ljava/lang/Class;
    .locals 5
    .param p0, "clazzName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    const/4 v1, 0x0

    .line 60
    .local v1, "googleStyleViewLayoutClazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;>;"
    if-nez p0, :cond_0

    .line 61
    invoke-static {p0}, Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayoutFactory$DefaultGoogleStyleViewLayoutFactory;->createGoogleStyleViewLayoutClazz(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    move-object v2, v1

    .line 73
    .end local v1    # "googleStyleViewLayoutClazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;>;"
    .local v2, "googleStyleViewLayoutClazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;>;"
    :goto_0
    return-object v2

    .line 66
    .end local v2    # "googleStyleViewLayoutClazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;>;"
    .restart local v1    # "googleStyleViewLayoutClazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;>;"
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object v2, v1

    .line 73
    .end local v1    # "googleStyleViewLayoutClazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;>;"
    .restart local v2    # "googleStyleViewLayoutClazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;>;"
    goto :goto_0

    .line 68
    .end local v2    # "googleStyleViewLayoutClazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;>;"
    .restart local v1    # "googleStyleViewLayoutClazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;>;"
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    sget-object v3, Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayoutFactory;->LOG_TAG:Ljava/lang/String;

    const-string v4, "The google style view layout you have chosen class has not been found."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    invoke-static {p0}, Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayoutFactory$DefaultGoogleStyleViewLayoutFactory;->createGoogleStyleViewLayoutClazz(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_1
.end method

.method public static createGoogleStyleViewLayoutClazzByLayoutCode(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "layoutCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    invoke-static {}, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshXmlConfiguration;->getInstance()Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshXmlConfiguration;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshXmlConfiguration;->getGoogleStyleViewLayoutClazzName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "clazzName":Ljava/lang/String;
    invoke-static {v0}, Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayoutFactory;->createGoogleStyleViewLayoutClazz(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    return-object v1
.end method

.method private static tryNewInstance(Ljava/lang/Class;Landroid/content/Context;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/content/res/TypedArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;",
            ">;",
            "Landroid/content/Context;",
            "Landroid/content/res/TypedArray;",
            ")",
            "Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;>;"
    const/4 v3, 0x0

    .line 114
    .local v3, "layout":Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;
    const/4 v4, 0x2

    :try_start_0
    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/content/res/TypedArray;

    aput-object v6, v4, v5

    invoke-virtual {p0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 116
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;>;"
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_6

    .line 133
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayout;>;"
    :goto_0
    return-object v3

    .line 118
    :catch_0
    move-exception v2

    .line 119
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    sget-object v4, Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayoutFactory;->LOG_TAG:Ljava/lang/String;

    const-string v5, "The google style view layout has failed to be created. "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 120
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 121
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v4, Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayoutFactory;->LOG_TAG:Ljava/lang/String;

    const-string v5, "The google style view layout has failed to be created. "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 122
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v2

    .line 123
    .local v2, "e":Ljava/lang/SecurityException;
    sget-object v4, Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayoutFactory;->LOG_TAG:Ljava/lang/String;

    const-string v5, "The google style view layout has failed to be created. "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 124
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_3
    move-exception v2

    .line 125
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    sget-object v4, Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayoutFactory;->LOG_TAG:Ljava/lang/String;

    const-string v5, "The google style view layout has failed to be created. "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 126
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v2

    .line 127
    .local v2, "e":Ljava/lang/InstantiationException;
    sget-object v4, Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayoutFactory;->LOG_TAG:Ljava/lang/String;

    const-string v5, "The google style view layout has failed to be created. "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 128
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :catch_5
    move-exception v2

    .line 129
    .local v2, "e":Ljava/lang/IllegalAccessException;
    sget-object v4, Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayoutFactory;->LOG_TAG:Ljava/lang/String;

    const-string v5, "The google style view layout has failed to be created. "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 130
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_6
    move-exception v2

    .line 131
    .local v2, "e":Ljava/lang/NullPointerException;
    sget-object v4, Lcom/handmark/pulltorefresh/library/GoogleStyleViewLayoutFactory;->LOG_TAG:Ljava/lang/String;

    const-string v5, "The google style view layout has failed to be created. "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
