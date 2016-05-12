.class public Lcom/samsung/milk/milkvideo/fragments/LegalFragment;
.super Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;
.source "LegalFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/samsung/milk/milkvideo/fragments/LegalFragment;
    .locals 1
    .param p0, "args"    # Landroid/os/Bundle;

    .prologue
    .line 56
    new-instance v0, Lcom/samsung/milk/milkvideo/fragments/LegalFragment;

    invoke-direct {v0}, Lcom/samsung/milk/milkvideo/fragments/LegalFragment;-><init>()V

    .line 57
    .local v0, "fragment":Lcom/samsung/milk/milkvideo/fragments/LegalFragment;
    invoke-virtual {v0, p0}, Lcom/samsung/milk/milkvideo/fragments/LegalFragment;->setArguments(Landroid/os/Bundle;)V

    .line 58
    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 18
    const v0, 0x7f030036

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    .line 23
    invoke-super {p0, p1, p2}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/LegalFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "legal_type"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/milk/milkvideo/activity/LegalActivity$LegalType;

    .line 26
    .local v4, "type":Lcom/samsung/milk/milkvideo/activity/LegalActivity$LegalType;
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/LegalFragment;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f06007b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 27
    .local v3, "title":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/LegalFragment;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f060094

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 28
    .local v0, "legalText":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/LegalFragment;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f060093

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 29
    .local v1, "legalTextContainer":Landroid/view/View;
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/LegalFragment;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f060095

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    .line 31
    .local v2, "legalWebview":Landroid/webkit/WebView;
    sget-object v5, Lcom/samsung/milk/milkvideo/activity/LegalActivity$LegalType;->PRIVACY_POLICY:Lcom/samsung/milk/milkvideo/activity/LegalActivity$LegalType;

    if-ne v4, v5, :cond_1

    .line 32
    const v5, 0x7f080092

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 33
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 34
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 35
    const-string v5, "https://account.samsung.com/membership/pp"

    invoke-virtual {v2, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 37
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 38
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 47
    :cond_0
    :goto_0
    new-instance v5, Lcom/samsung/milk/milkvideo/fragments/LegalFragment$1;

    invoke-direct {v5, p0}, Lcom/samsung/milk/milkvideo/fragments/LegalFragment$1;-><init>(Lcom/samsung/milk/milkvideo/fragments/LegalFragment;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    return-void

    .line 39
    :cond_1
    sget-object v5, Lcom/samsung/milk/milkvideo/activity/LegalActivity$LegalType;->TERMS_OF_SERVICE:Lcom/samsung/milk/milkvideo/activity/LegalActivity$LegalType;

    if-ne v4, v5, :cond_2

    .line 40
    const v5, 0x7f080091

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 41
    const v5, 0x7f0800af

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 42
    :cond_2
    sget-object v5, Lcom/samsung/milk/milkvideo/activity/LegalActivity$LegalType;->COPYRIGHT_AND_LICENSES:Lcom/samsung/milk/milkvideo/activity/LegalActivity$LegalType;

    if-ne v4, v5, :cond_0

    .line 43
    const v5, 0x7f080093

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 44
    const v5, 0x7f0800b0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
