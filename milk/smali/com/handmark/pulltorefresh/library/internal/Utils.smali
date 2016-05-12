.class public Lcom/handmark/pulltorefresh/library/internal/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field static final ANDROID_NAMESPACE:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field static final INVALID_INT_VALUE:I = -0x1

.field static final LOG_TAG:Ljava/lang/String; = "PullToRefresh"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeSilently(Ljava/io/InputStream;)V
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 53
    if-nez p0, :cond_0

    .line 68
    :goto_0
    return-void

    .line 59
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 64
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static closeSilently(Ljava/io/Reader;)V
    .locals 2
    .param p0, "br"    # Ljava/io/Reader;

    .prologue
    .line 75
    if-nez p0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 80
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {p0}, Ljava/io/Reader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 85
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static existAttributeIntValue(Landroid/util/AttributeSet;Ljava/lang/String;)Z
    .locals 1
    .param p0, "attrs"    # Landroid/util/AttributeSet;
    .param p1, "attribute"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 97
    const-string v0, "http://schemas.android.com/apk/res/android"

    invoke-static {p0, v0, p1}, Lcom/handmark/pulltorefresh/library/internal/Utils;->existAttributeIntValue(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static existAttributeIntValue(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "attrs"    # Landroid/util/AttributeSet;
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 108
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lcom/handmark/pulltorefresh/library/internal/Utils;->existAttributeIntValue(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static existAttributeIntValue(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3
    .param p0, "attrs"    # Landroid/util/AttributeSet;
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "invalidValue"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 121
    if-nez p0, :cond_1

    .line 122
    const/4 v0, 0x0

    .line 132
    :cond_0
    :goto_0
    return v0

    .line 124
    :cond_1
    const-string v2, "namespace"

    invoke-static {p0, v2}, Lcom/handmark/pulltorefresh/library/internal/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    const-string v2, "attribute"

    invoke-static {p0, v2}, Lcom/handmark/pulltorefresh/library/internal/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    const/4 v0, 0x1

    .line 128
    .local v0, "isExist":Z
    invoke-interface {p0, p1, p2, p3}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 129
    .local v1, "value":I
    if-ne v1, p3, :cond_0

    .line 130
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static existAttributeValue(Landroid/util/AttributeSet;Ljava/lang/String;)Z
    .locals 1
    .param p0, "attrs"    # Landroid/util/AttributeSet;
    .param p1, "attribute"    # Ljava/lang/String;

    .prologue
    .line 141
    const-string v0, "http://schemas.android.com/apk/res/android"

    invoke-static {p0, v0, p1}, Lcom/handmark/pulltorefresh/library/internal/Utils;->existAttributeValue(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static existAttributeValue(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "attrs"    # Landroid/util/AttributeSet;
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;

    .prologue
    .line 152
    if-nez p0, :cond_1

    .line 153
    const/4 v0, 0x0

    .line 165
    :cond_0
    :goto_0
    return v0

    .line 155
    :cond_1
    const-string v2, "namespace"

    invoke-static {p0, v2}, Lcom/handmark/pulltorefresh/library/internal/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    const-string v2, "attribute"

    invoke-static {p0, v2}, Lcom/handmark/pulltorefresh/library/internal/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    const/4 v0, 0x1

    .line 159
    .local v0, "isExist":Z
    invoke-interface {p0, p1, p2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 163
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getActionBarSize(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, "actionBarHeight":I
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 176
    .local v1, "tv":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x10102eb

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    iget v2, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    .line 180
    :cond_0
    return v0
.end method

.method public static getStatusBarSize(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 187
    const/4 v1, 0x0

    .line 188
    .local v1, "result":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "status_bar_height"

    const-string v4, "dimen"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 189
    .local v0, "resourceId":I
    if-lez v0, :cond_0

    .line 190
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 193
    :cond_0
    return v1
.end method

.method public static warnDeprecation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "depreacted"    # Ljava/lang/String;
    .param p1, "replacement"    # Ljava/lang/String;

    .prologue
    .line 45
    const-string v0, "PullToRefresh"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You\'re using the deprecated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " attr, please switch over to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void
.end method
