.class Luk/co/chrisjenx/calligraphy/CalligraphyFactory;
.super Ljava/lang/Object;
.source "CalligraphyFactory.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory;


# static fields
.field private static final ACTION_BAR_SUBTITLE:Ljava/lang/String; = "action_bar_subtitle"

.field private static final ACTION_BAR_TITLE:Ljava/lang/String; = "action_bar_title"

.field private static final sClassPrefixList:[Ljava/lang/String;

.field private static final sStyles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Landroid/widget/TextView;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final factory:Landroid/view/LayoutInflater$Factory;

.field private final mAttributeId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.widget."

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.webkit."

    aput-object v2, v0, v1

    sput-object v0, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->sClassPrefixList:[Ljava/lang/String;

    .line 27
    new-instance v0, Luk/co/chrisjenx/calligraphy/CalligraphyFactory$1;

    invoke-direct {v0}, Luk/co/chrisjenx/calligraphy/CalligraphyFactory$1;-><init>()V

    sput-object v0, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->sStyles:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/view/LayoutInflater$Factory;I)V
    .locals 0
    .param p1, "factory"    # Landroid/view/LayoutInflater$Factory;
    .param p2, "attributeId"    # I

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->factory:Landroid/view/LayoutInflater$Factory;

    .line 85
    iput p2, p0, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->mAttributeId:I

    .line 86
    return-void
.end method

.method protected static getStyleForTextView(Landroid/view/View;)[I
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const v4, 0x10102ce

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 48
    const/4 v1, 0x2

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 50
    .local v0, "styleIds":[I
    const-string v1, "action_bar_title"

    invoke-static {p0, v1}, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->matchesResourceIdName(Landroid/view/View;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 51
    aput v4, v0, v3

    .line 52
    const v1, 0x10102f8

    aput v1, v0, v2

    .line 57
    :cond_0
    :goto_0
    aget v1, v0, v3

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 59
    sget-object v1, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->sStyles:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->sStyles:Ljava/util/Map;

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_1
    aput v1, v0, v3

    .line 63
    :cond_1
    return-object v0

    .line 53
    :cond_2
    const-string v1, "action_bar_subtitle"

    invoke-static {p0, v1}, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->matchesResourceIdName(Landroid/view/View;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    aput v4, v0, v3

    .line 55
    const v1, 0x10102f9

    aput v1, v0, v2

    goto :goto_0

    .line 60
    :cond_3
    const v1, 0x1010034

    goto :goto_1

    .line 48
    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method protected static matchesResourceIdName(Landroid/view/View;Ljava/lang/String;)Z
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "matches"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 76
    :goto_0
    return v1

    .line 75
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "resourceEntryName":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method protected createViewOrFailQuietly(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 112
    const-string v3, "."

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 113
    invoke-virtual {p0, p1, v2, p2, p3}, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->createViewOrFailQuietly(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    .line 124
    :cond_0
    :goto_0
    return-object v1

    .line 116
    :cond_1
    sget-object v4, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->sClassPrefixList:[Ljava/lang/String;

    array-length v5, v4

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_2

    aget-object v0, v4, v3

    .line 117
    .local v0, "prefix":Ljava/lang/String;
    invoke-virtual {p0, p1, v0, p2, p3}, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->createViewOrFailQuietly(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    .line 119
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_0

    .line 116
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "prefix":Ljava/lang/String;
    .end local v1    # "view":Landroid/view/View;
    :cond_2
    move-object v1, v2

    .line 124
    goto :goto_0
.end method

.method protected createViewOrFailQuietly(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 129
    :try_start_0
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p4}, Landroid/view/LayoutInflater;->createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 131
    :goto_0
    return-object v1

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "ignore":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 90
    const/4 v0, 0x0

    .line 92
    .local v0, "view":Landroid/view/View;
    instance-of v1, p2, Landroid/view/LayoutInflater$Factory;

    if-eqz v1, :cond_0

    move-object v1, p2

    .line 93
    check-cast v1, Landroid/view/LayoutInflater$Factory;

    invoke-interface {v1, p1, p2, p3}, Landroid/view/LayoutInflater$Factory;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 96
    :cond_0
    iget-object v1, p0, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->factory:Landroid/view/LayoutInflater$Factory;

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 97
    iget-object v1, p0, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->factory:Landroid/view/LayoutInflater$Factory;

    invoke-interface {v1, p1, p2, p3}, Landroid/view/LayoutInflater$Factory;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 100
    :cond_1
    if-nez v0, :cond_2

    .line 101
    invoke-virtual {p0, p1, p2, p3}, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->createViewOrFailQuietly(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 104
    :cond_2
    if-eqz v0, :cond_3

    .line 105
    invoke-virtual {p0, v0, p1, p2, p3}, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->onViewCreated(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 108
    :cond_3
    return-object v0
.end method

.method protected onViewCreated(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 136
    instance-of v4, p1, Landroid/widget/TextView;

    if-eqz v4, :cond_5

    .line 141
    iget v4, p0, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->mAttributeId:I

    invoke-static {p3, p4, v4}, Luk/co/chrisjenx/calligraphy/CalligraphyUtils;->pullFontPathFromView(Landroid/content/Context;Landroid/util/AttributeSet;I)Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, "textViewFont":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 145
    iget v4, p0, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->mAttributeId:I

    invoke-static {p3, p4, v4}, Luk/co/chrisjenx/calligraphy/CalligraphyUtils;->pullFontPathFromStyle(Landroid/content/Context;Landroid/util/AttributeSet;I)Ljava/lang/String;

    move-result-object v2

    .line 149
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 150
    iget v4, p0, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->mAttributeId:I

    invoke-static {p3, p4, v4}, Luk/co/chrisjenx/calligraphy/CalligraphyUtils;->pullFontPathFromTextAppearance(Landroid/content/Context;Landroid/util/AttributeSet;I)Ljava/lang/String;

    move-result-object v2

    .line 154
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 155
    invoke-static {p1}, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->getStyleForTextView(Landroid/view/View;)[I

    move-result-object v1

    .line 156
    .local v1, "styleForTextView":[I
    aget v4, v1, v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_6

    .line 157
    aget v4, v1, v0

    aget v5, v1, v3

    iget v6, p0, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->mAttributeId:I

    invoke-static {p3, v4, v5, v6}, Luk/co/chrisjenx/calligraphy/CalligraphyUtils;->pullFontPathFromTheme(Landroid/content/Context;III)Ljava/lang/String;

    move-result-object v2

    .line 162
    .end local v1    # "styleForTextView":[I
    :cond_2
    :goto_0
    const-string v4, "action_bar_title"

    invoke-static {p1, v4}, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->matchesResourceIdName(Landroid/view/View;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "action_bar_subtitle"

    invoke-static {p1, v4}, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->matchesResourceIdName(Landroid/view/View;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move v0, v3

    .line 163
    .local v0, "deferred":Z
    :cond_4
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "view":Landroid/view/View;
    invoke-static {}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->get()Luk/co/chrisjenx/calligraphy/CalligraphyConfig;

    move-result-object v3

    invoke-static {p3, p1, v3, v2, v0}, Luk/co/chrisjenx/calligraphy/CalligraphyUtils;->applyFontToTextView(Landroid/content/Context;Landroid/widget/TextView;Luk/co/chrisjenx/calligraphy/CalligraphyConfig;Ljava/lang/String;Z)V

    .line 165
    .end local v0    # "deferred":Z
    .end local v2    # "textViewFont":Ljava/lang/String;
    :cond_5
    return-void

    .line 159
    .restart local v1    # "styleForTextView":[I
    .restart local v2    # "textViewFont":Ljava/lang/String;
    .restart local p1    # "view":Landroid/view/View;
    :cond_6
    aget v4, v1, v0

    iget v5, p0, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->mAttributeId:I

    invoke-static {p3, v4, v5}, Luk/co/chrisjenx/calligraphy/CalligraphyUtils;->pullFontPathFromTheme(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
