.class Lcom/handmark/pulltorefresh/library/internal/ViewCompat$Methods;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/handmark/pulltorefresh/library/internal/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Methods"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static postOnAnimationMethod:Ljava/lang/reflect/Method;

.field private static setBackgroundMethod:Ljava/lang/reflect/Method;

.field private static setLayerTypeMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/handmark/pulltorefresh/library/internal/ViewCompat$Methods;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/handmark/pulltorefresh/library/internal/ViewCompat$Methods;->LOG_TAG:Ljava/lang/String;

    .line 44
    invoke-static {}, Lcom/handmark/pulltorefresh/library/internal/ViewCompat$Methods;->initializeMethods()V

    .line 45
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # I

    .prologue
    .line 36
    invoke-static {p0, p1}, Lcom/handmark/pulltorefresh/library/internal/ViewCompat$Methods;->setLayerType(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$100(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 36
    invoke-static {p0, p1}, Lcom/handmark/pulltorefresh/library/internal/ViewCompat$Methods;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$200(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 36
    invoke-static {p0, p1}, Lcom/handmark/pulltorefresh/library/internal/ViewCompat$Methods;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private static initializeMethods()V
    .locals 6

    .prologue
    .line 50
    const/4 v1, 0x0

    .line 54
    .local v1, "viewClazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    :try_start_0
    const-string v2, "android.view.View"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 60
    :goto_0
    if-nez v1, :cond_0

    .line 85
    :goto_1
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    sget-object v2, Lcom/handmark/pulltorefresh/library/internal/ViewCompat$Methods;->LOG_TAG:Ljava/lang/String;

    const-string v3, "android.view.View class has not been found. Maybe Pull To Refresh might work not correctly."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 66
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    :try_start_1
    const-string v2, "setLayerType"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/graphics/Paint;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/handmark/pulltorefresh/library/internal/ViewCompat$Methods;->setLayerTypeMethod:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2

    .line 73
    :goto_2
    :try_start_2
    const-string v2, "postOnAnimation"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/Runnable;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/handmark/pulltorefresh/library/internal/ViewCompat$Methods;->postOnAnimationMethod:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3

    .line 80
    :goto_3
    :try_start_3
    const-string v2, "setBackground"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/graphics/drawable/Drawable;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/handmark/pulltorefresh/library/internal/ViewCompat$Methods;->setBackgroundMethod:Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 81
    :catch_1
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    sget-object v2, Lcom/handmark/pulltorefresh/library/internal/ViewCompat$Methods;->LOG_TAG:Ljava/lang/String;

    const-string v3, "android.view.View.setBackground() method has not been found. Maybe Pull To Refresh might work not correctly."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 67
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 68
    .restart local v0    # "e":Ljava/lang/NoSuchMethodException;
    sget-object v2, Lcom/handmark/pulltorefresh/library/internal/ViewCompat$Methods;->LOG_TAG:Ljava/lang/String;

    const-string v3, "android.view.View.setLayerType() method has not been found. Maybe Pull To Refresh might work not correctly."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 74
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v0

    .line 75
    .restart local v0    # "e":Ljava/lang/NoSuchMethodException;
    sget-object v2, Lcom/handmark/pulltorefresh/library/internal/ViewCompat$Methods;->LOG_TAG:Ljava/lang/String;

    const-string v3, "android.view.View.postOnAnimation() method has not been found. Maybe Pull To Refresh might work not correctly."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private static postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 104
    const-string v1, "view"

    invoke-static {p0, v1}, Lcom/handmark/pulltorefresh/library/internal/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/ViewCompat$Methods;->postOnAnimationMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 107
    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/ViewCompat$Methods;->LOG_TAG:Ljava/lang/String;

    const-string v2, "android.view.View.postOnAnimation() method token has not been initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    :try_start_0
    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/ViewCompat$Methods;->postOnAnimationMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 118
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/ViewCompat$Methods;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Some argument is illegal to call android.view.View.postOnAnimation()."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 113
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/ViewCompat$Methods;->LOG_TAG:Ljava/lang/String;

    const-string v2, "It has failed to call android.view.View.postOnAnimation()."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 115
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/ViewCompat$Methods;->LOG_TAG:Ljava/lang/String;

    const-string v2, "It has failed to call android.view.View.postOnAnimation()."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 121
    const-string v1, "view"

    invoke-static {p0, v1}, Lcom/handmark/pulltorefresh/library/internal/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/ViewCompat$Methods;->setBackgroundMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 124
    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/ViewCompat$Methods;->LOG_TAG:Ljava/lang/String;

    const-string v2, "android.view.View.setBackground() method token has not been initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_0
    :try_start_0
    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/ViewCompat$Methods;->setBackgroundMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 135
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/ViewCompat$Methods;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Some argument is illegal to call android.view.View.setBackground()."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 130
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/ViewCompat$Methods;->LOG_TAG:Ljava/lang/String;

    const-string v2, "It has failed to call android.view.View.setBackground()."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 132
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/ViewCompat$Methods;->LOG_TAG:Ljava/lang/String;

    const-string v2, "It has failed to call android.view.View.setBackground()."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static setLayerType(Landroid/view/View;I)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "layerType"    # I

    .prologue
    .line 87
    const-string v1, "view"

    invoke-static {p0, v1}, Lcom/handmark/pulltorefresh/library/internal/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/ViewCompat$Methods;->setLayerTypeMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 90
    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/ViewCompat$Methods;->LOG_TAG:Ljava/lang/String;

    const-string v2, "android.view.View.setLayerType() method token has not been initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    :try_start_0
    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/ViewCompat$Methods;->setLayerTypeMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 101
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/ViewCompat$Methods;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Some argument is illegal to call android.view.View.setLayerType()."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 96
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/ViewCompat$Methods;->LOG_TAG:Ljava/lang/String;

    const-string v2, "It has failed to call android.view.View.setLayerType()."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 98
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/ViewCompat$Methods;->LOG_TAG:Ljava/lang/String;

    const-string v2, "It has failed to call android.view.View.setLayerType()."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
