.class public Lcom/samsung/milk/milkvideo/widgets/NachosToast;
.super Ljava/lang/Object;
.source "NachosToast.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public show(Landroid/app/Activity;Ljava/lang/CharSequence;I)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "duration"    # I

    .prologue
    .line 13
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 14
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f03004a

    const v4, 0x7f0600ea

    invoke-virtual {p1, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v0, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 15
    .local v1, "layout":Landroid/view/View;
    const v4, 0x7f0600eb

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 16
    .local v3, "toastTextView":Landroid/widget/TextView;
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    new-instance v2, Landroid/widget/Toast;

    invoke-direct {v2, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 19
    .local v2, "toast":Landroid/widget/Toast;
    invoke-virtual {v2, p3}, Landroid/widget/Toast;->setDuration(I)V

    .line 20
    invoke-virtual {v2, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 21
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 22
    return-void
.end method
