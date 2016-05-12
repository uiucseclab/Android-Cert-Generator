.class public Lcom/handmark/pulltorefresh/library/IndicatorLayoutFactory;
.super Ljava/lang/Object;
.source "IndicatorLayoutFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/handmark/pulltorefresh/library/IndicatorLayoutFactory$DefaultIndicatorLayoutFactory;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/handmark/pulltorefresh/library/IndicatorLayoutFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/handmark/pulltorefresh/library/IndicatorLayoutFactory;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    return-void
.end method

.method public static createIndicatorLayout(Ljava/lang/Class;Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;",
            ")",
            "Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;>;"
    const/4 v0, 0x0

    .line 93
    .local v0, "layout":Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
    if-nez p0, :cond_0

    .line 94
    sget-object v1, Lcom/handmark/pulltorefresh/library/IndicatorLayoutFactory;->LOG_TAG:Ljava/lang/String;

    const-string v2, "The Class token of the Indicator Layout is missing. Default Indicator Layout will be used."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const-string v1, ""

    invoke-static {v1}, Lcom/handmark/pulltorefresh/library/IndicatorLayoutFactory$DefaultIndicatorLayoutFactory;->createIndicatorLayoutClazz(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 98
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/IndicatorLayoutFactory;->tryNewInstance(Ljava/lang/Class;Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    move-result-object v0

    .line 101
    if-nez v0, :cond_1

    .line 102
    invoke-static {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/IndicatorLayoutFactory$DefaultIndicatorLayoutFactory;->createIndicatorLayout(Ljava/lang/Class;Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    move-result-object v0

    .line 105
    :cond_1
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->setVisibility(I)V

    .line 106
    return-object v0
.end method

.method public static createIndicatorLayout(Ljava/lang/String;Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
    .locals 2
    .param p0, "layoutCode"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .prologue
    .line 79
    invoke-static {p0}, Lcom/handmark/pulltorefresh/library/IndicatorLayoutFactory;->createIndicatorLayoutClazz(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 80
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;>;"
    invoke-static {v0, p1, p2}, Lcom/handmark/pulltorefresh/library/IndicatorLayoutFactory;->createIndicatorLayout(Ljava/lang/Class;Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    move-result-object v1

    return-object v1
.end method

.method public static createIndicatorLayoutClazz(Ljava/lang/String;)Ljava/lang/Class;
    .locals 5
    .param p0, "clazzName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;>;"
    if-nez p0, :cond_0

    .line 56
    invoke-static {p0}, Lcom/handmark/pulltorefresh/library/IndicatorLayoutFactory$DefaultIndicatorLayoutFactory;->createIndicatorLayoutClazz(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    move-object v1, v0

    .line 69
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;>;"
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;>;"
    :goto_0
    return-object v1

    .line 61
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;>;"
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;>;"
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 69
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;>;"
    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;>;"
    goto :goto_0

    .line 63
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;>;"
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;>;"
    :catch_0
    move-exception v2

    .line 64
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    sget-object v3, Lcom/handmark/pulltorefresh/library/IndicatorLayoutFactory;->LOG_TAG:Ljava/lang/String;

    const-string v4, "The indicator layout you have chosen class has not been found."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    invoke-static {p0}, Lcom/handmark/pulltorefresh/library/IndicatorLayoutFactory$DefaultIndicatorLayoutFactory;->createIndicatorLayoutClazz(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_1
.end method

.method public static createIndicatorLayoutClazzByLayoutCode(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "layoutCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    invoke-static {}, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshXmlConfiguration;->getInstance()Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshXmlConfiguration;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/handmark/pulltorefresh/configuration/xml/PullToRefreshXmlConfiguration;->getIndicatorLayoutClazzName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "clazzName":Ljava/lang/String;
    invoke-static {v0}, Lcom/handmark/pulltorefresh/library/IndicatorLayoutFactory;->createIndicatorLayoutClazz(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    return-object v1
.end method

.method private static tryNewInstance(Ljava/lang/Class;Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;",
            ")",
            "Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;>;"
    const/4 v3, 0x0

    .line 113
    .local v3, "layout":Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
    const/4 v4, 0x2

    :try_start_0
    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    aput-object v6, v4, v5

    invoke-virtual {p0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 115
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;>;"
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

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
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;>;"
    :goto_0
    return-object v3

    .line 117
    :catch_0
    move-exception v2

    .line 118
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    sget-object v4, Lcom/handmark/pulltorefresh/library/IndicatorLayoutFactory;->LOG_TAG:Ljava/lang/String;

    const-string v5, "The indicator layout has failed to be created. "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 119
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 120
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v4, Lcom/handmark/pulltorefresh/library/IndicatorLayoutFactory;->LOG_TAG:Ljava/lang/String;

    const-string v5, "The indicator layout has failed to be created. "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 121
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v2

    .line 122
    .local v2, "e":Ljava/lang/SecurityException;
    sget-object v4, Lcom/handmark/pulltorefresh/library/IndicatorLayoutFactory;->LOG_TAG:Ljava/lang/String;

    const-string v5, "The indicator layout has failed to be created. "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 123
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_3
    move-exception v2

    .line 124
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    sget-object v4, Lcom/handmark/pulltorefresh/library/IndicatorLayoutFactory;->LOG_TAG:Ljava/lang/String;

    const-string v5, "The indicator layout has failed to be created. "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 125
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v2

    .line 126
    .local v2, "e":Ljava/lang/InstantiationException;
    sget-object v4, Lcom/handmark/pulltorefresh/library/IndicatorLayoutFactory;->LOG_TAG:Ljava/lang/String;

    const-string v5, "The indicator layout has failed to be created. "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 127
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :catch_5
    move-exception v2

    .line 128
    .local v2, "e":Ljava/lang/IllegalAccessException;
    sget-object v4, Lcom/handmark/pulltorefresh/library/IndicatorLayoutFactory;->LOG_TAG:Ljava/lang/String;

    const-string v5, "The indicator layout has failed to be created. "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 129
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_6
    move-exception v2

    .line 130
    .local v2, "e":Ljava/lang/NullPointerException;
    sget-object v4, Lcom/handmark/pulltorefresh/library/IndicatorLayoutFactory;->LOG_TAG:Ljava/lang/String;

    const-string v5, "The indicator layout has failed to be created. "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
