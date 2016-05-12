.class public final Luk/co/chrisjenx/calligraphy/CalligraphyUtils;
.super Ljava/lang/Object;
.source "CalligraphyUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    return-void
.end method

.method static applyFontToTextView(Landroid/content/Context;Landroid/widget/TextView;Luk/co/chrisjenx/calligraphy/CalligraphyConfig;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "config"    # Luk/co/chrisjenx/calligraphy/CalligraphyConfig;

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Luk/co/chrisjenx/calligraphy/CalligraphyUtils;->applyFontToTextView(Landroid/content/Context;Landroid/widget/TextView;Luk/co/chrisjenx/calligraphy/CalligraphyConfig;Z)V

    .line 118
    return-void
.end method

.method public static applyFontToTextView(Landroid/content/Context;Landroid/widget/TextView;Luk/co/chrisjenx/calligraphy/CalligraphyConfig;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "config"    # Luk/co/chrisjenx/calligraphy/CalligraphyConfig;
    .param p3, "textViewFont"    # Ljava/lang/String;

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Luk/co/chrisjenx/calligraphy/CalligraphyUtils;->applyFontToTextView(Landroid/content/Context;Landroid/widget/TextView;Luk/co/chrisjenx/calligraphy/CalligraphyConfig;Ljava/lang/String;Z)V

    .line 137
    return-void
.end method

.method static applyFontToTextView(Landroid/content/Context;Landroid/widget/TextView;Luk/co/chrisjenx/calligraphy/CalligraphyConfig;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "config"    # Luk/co/chrisjenx/calligraphy/CalligraphyConfig;
    .param p3, "textViewFont"    # Ljava/lang/String;
    .param p4, "deferred"    # Z

    .prologue
    .line 140
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0, p1, p3, p4}, Luk/co/chrisjenx/calligraphy/CalligraphyUtils;->applyFontToTextView(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    :cond_2
    invoke-static {p0, p1, p2, p4}, Luk/co/chrisjenx/calligraphy/CalligraphyUtils;->applyFontToTextView(Landroid/content/Context;Landroid/widget/TextView;Luk/co/chrisjenx/calligraphy/CalligraphyConfig;Z)V

    goto :goto_0
.end method

.method static applyFontToTextView(Landroid/content/Context;Landroid/widget/TextView;Luk/co/chrisjenx/calligraphy/CalligraphyConfig;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "config"    # Luk/co/chrisjenx/calligraphy/CalligraphyConfig;
    .param p3, "deferred"    # Z

    .prologue
    .line 121
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    invoke-virtual {p2}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->isFontSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p2}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->getFontPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Luk/co/chrisjenx/calligraphy/CalligraphyUtils;->applyFontToTextView(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;Z)Z

    goto :goto_0
.end method

.method public static applyFontToTextView(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Luk/co/chrisjenx/calligraphy/CalligraphyUtils;->applyFontToTextView(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static applyFontToTextView(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;Z)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "deferred"    # Z

    .prologue
    .line 110
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 113
    :goto_0
    return v2

    .line 111
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 112
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    invoke-static {v0, p2}, Luk/co/chrisjenx/calligraphy/TypefaceUtils;->load(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 113
    .local v1, "typeface":Landroid/graphics/Typeface;
    invoke-static {p1, v1, p3}, Luk/co/chrisjenx/calligraphy/CalligraphyUtils;->applyFontToTextView(Landroid/widget/TextView;Landroid/graphics/Typeface;Z)Z

    move-result v2

    goto :goto_0
.end method

.method public static applyFontToTextView(Landroid/widget/TextView;Landroid/graphics/Typeface;)Z
    .locals 1
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Luk/co/chrisjenx/calligraphy/CalligraphyUtils;->applyFontToTextView(Landroid/widget/TextView;Landroid/graphics/Typeface;Z)Z

    move-result v0

    return v0
.end method

.method public static applyFontToTextView(Landroid/widget/TextView;Landroid/graphics/Typeface;Z)Z
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "typeface"    # Landroid/graphics/Typeface;
    .param p2, "deferred"    # Z

    .prologue
    .line 73
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 93
    :goto_0
    return v0

    .line 74
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v0

    or-int/lit16 v0, v0, 0x80

    or-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 75
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 76
    if-eqz p2, :cond_2

    .line 77
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p1}, Luk/co/chrisjenx/calligraphy/CalligraphyUtils;->applyTypefaceSpan(Ljava/lang/CharSequence;Landroid/graphics/Typeface;)Ljava/lang/CharSequence;

    move-result-object v0

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 78
    new-instance v0, Luk/co/chrisjenx/calligraphy/CalligraphyUtils$1;

    invoke-direct {v0, p1}, Luk/co/chrisjenx/calligraphy/CalligraphyUtils$1;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 93
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static applyTypefaceSpan(Ljava/lang/CharSequence;Landroid/graphics/Typeface;)Ljava/lang/CharSequence;
    .locals 6
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 33
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 34
    instance-of v1, p0, Landroid/text/Spannable;

    if-nez v1, :cond_0

    .line 35
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .end local p0    # "s":Ljava/lang/CharSequence;
    .local v0, "s":Ljava/lang/CharSequence;
    move-object p0, v0

    .end local v0    # "s":Ljava/lang/CharSequence;
    .restart local p0    # "s":Ljava/lang/CharSequence;
    :cond_0
    move-object v1, p0

    .line 37
    check-cast v1, Landroid/text/Spannable;

    invoke-static {p1}, Luk/co/chrisjenx/calligraphy/TypefaceUtils;->getSpan(Landroid/graphics/Typeface;)Luk/co/chrisjenx/calligraphy/CalligraphyTypefaceSpan;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/16 v5, 0x21

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 39
    :cond_1
    return-object p0
.end method

.method static pullFontPathFromStyle(Landroid/content/Context;Landroid/util/AttributeSet;I)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "attributeId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 183
    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    move-object v0, v2

    .line 199
    :goto_0
    return-object v0

    .line 185
    :cond_0
    const/4 v3, 0x1

    new-array v3, v3, [I

    aput p2, v3, v4

    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 186
    .local v1, "typedArray":Landroid/content/res/TypedArray;
    if-eqz v1, :cond_2

    .line 189
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "fontFromAttribute":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 196
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .end local v0    # "fontFromAttribute":Ljava/lang/String;
    :cond_2
    :goto_1
    move-object v0, v2

    .line 199
    goto :goto_0

    .line 193
    :catch_0
    move-exception v3

    .line 196
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v2
.end method

.method static pullFontPathFromTextAppearance(Landroid/content/Context;Landroid/util/AttributeSet;I)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "attributeId"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 211
    if-ne p2, v6, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-object v5

    .line 215
    :cond_1
    const/4 v3, -0x1

    .line 216
    .local v3, "textAppearanceId":I
    new-array v6, v9, [I

    const v7, 0x1010034

    aput v7, v6, v8

    invoke-virtual {p0, p1, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 217
    .local v4, "typedArrayAttr":Landroid/content/res/TypedArray;
    if-eqz v4, :cond_2

    .line 219
    const/4 v6, 0x0

    const/4 v7, -0x1

    :try_start_0
    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 224
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 228
    :cond_2
    new-array v6, v9, [I

    aput p2, v6, v8

    invoke-virtual {p0, v3, v6}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 229
    .local v2, "textAppearanceAttrs":Landroid/content/res/TypedArray;
    if-eqz v2, :cond_0

    .line 231
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    .line 236
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 220
    .end local v2    # "textAppearanceAttrs":Landroid/content/res/TypedArray;
    :catch_0
    move-exception v1

    .line 224
    .local v1, "ignored":Ljava/lang/Exception;
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .end local v1    # "ignored":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    throw v5

    .line 232
    .restart local v2    # "textAppearanceAttrs":Landroid/content/res/TypedArray;
    :catch_1
    move-exception v0

    .line 236
    .local v0, "ignore":Ljava/lang/Exception;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .end local v0    # "ignore":Ljava/lang/Exception;
    :catchall_1
    move-exception v5

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    throw v5
.end method

.method static pullFontPathFromTheme(Landroid/content/Context;II)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "styleAttrId"    # I
    .param p2, "attributeId"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v5, -0x1

    .line 251
    if-eq p1, v5, :cond_0

    if-ne p2, v5, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-object v0

    .line 254
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 255
    .local v2, "theme":Landroid/content/res/Resources$Theme;
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 257
    .local v4, "value":Landroid/util/TypedValue;
    invoke-virtual {v2, p1, v4, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 258
    iget v5, v4, Landroid/util/TypedValue;->resourceId:I

    new-array v6, v6, [I

    aput p2, v6, v7

    invoke-virtual {v2, v5, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 260
    .local v3, "typedArray":Landroid/content/res/TypedArray;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 266
    .local v0, "font":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 262
    .end local v0    # "font":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 266
    .local v1, "ignore":Ljava/lang/Exception;
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .end local v1    # "ignore":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    throw v5
.end method

.method static pullFontPathFromTheme(Landroid/content/Context;III)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "styleAttrId"    # I
    .param p2, "subStyleAttrId"    # I
    .param p3, "attributeId"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, -0x1

    const/4 v6, 0x0

    .line 280
    if-eq p1, v9, :cond_0

    if-ne p3, v9, :cond_1

    .line 310
    :cond_0
    :goto_0
    return-object v6

    .line 283
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 284
    .local v4, "theme":Landroid/content/res/Resources$Theme;
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 286
    .local v5, "value":Landroid/util/TypedValue;
    invoke-virtual {v4, p1, v5, v11}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 287
    const/4 v2, -0x1

    .line 288
    .local v2, "subStyleResId":I
    iget v7, v5, Landroid/util/TypedValue;->resourceId:I

    new-array v8, v11, [I

    aput p2, v8, v10

    invoke-virtual {v4, v7, v8}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 290
    .local v1, "parentTypedArray":Landroid/content/res/TypedArray;
    const/4 v7, 0x0

    const/4 v8, -0x1

    :try_start_0
    invoke-virtual {v1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 295
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 298
    if-eq v2, v9, :cond_0

    .line 299
    new-array v7, v11, [I

    aput p3, v7, v10

    invoke-virtual {p0, v2, v7}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 300
    .local v3, "subTypedArray":Landroid/content/res/TypedArray;
    if-eqz v3, :cond_0

    .line 302
    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v3, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    .line 307
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 291
    .end local v3    # "subTypedArray":Landroid/content/res/TypedArray;
    :catch_0
    move-exception v0

    .line 295
    .local v0, "ignore":Ljava/lang/Exception;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .end local v0    # "ignore":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v6

    .line 303
    .restart local v3    # "subTypedArray":Landroid/content/res/TypedArray;
    :catch_1
    move-exception v0

    .line 307
    .restart local v0    # "ignore":Ljava/lang/Exception;
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .end local v0    # "ignore":Ljava/lang/Exception;
    :catchall_1
    move-exception v6

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    throw v6
.end method

.method static pullFontPathFromView(Landroid/content/Context;Landroid/util/AttributeSet;I)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "attributeId"    # I

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x0

    .line 156
    if-ne p2, v5, :cond_0

    .line 170
    :goto_0
    return-object v3

    .line 161
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 167
    .local v0, "attributeName":Ljava/lang/String;
    invoke-interface {p1, v3, v0, v5}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 168
    .local v2, "stringResourceId":I
    if-lez v2, :cond_1

    .line 169
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 162
    .end local v0    # "attributeName":Ljava/lang/String;
    .end local v2    # "stringResourceId":I
    :catch_0
    move-exception v1

    .line 164
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    goto :goto_0

    .line 170
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    .restart local v0    # "attributeName":Ljava/lang/String;
    .restart local v2    # "stringResourceId":I
    :cond_1
    invoke-interface {p1, v3, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
