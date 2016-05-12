.class final Lcom/crashlytics/android/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/crashlytics/android/u;

.field final synthetic b:Lcom/crashlytics/android/Crashlytics;

.field private synthetic c:Landroid/app/Activity;

.field private synthetic d:Lcom/crashlytics/android/X;

.field private synthetic e:Lcom/crashlytics/android/internal/aQ;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/Crashlytics;Landroid/app/Activity;Lcom/crashlytics/android/u;Lcom/crashlytics/android/X;Lcom/crashlytics/android/internal/aQ;)V
    .locals 0

    .prologue
    .line 669
    iput-object p1, p0, Lcom/crashlytics/android/p;->b:Lcom/crashlytics/android/Crashlytics;

    iput-object p2, p0, Lcom/crashlytics/android/p;->c:Landroid/app/Activity;

    iput-object p3, p0, Lcom/crashlytics/android/p;->a:Lcom/crashlytics/android/u;

    iput-object p4, p0, Lcom/crashlytics/android/p;->d:Lcom/crashlytics/android/X;

    iput-object p5, p0, Lcom/crashlytics/android/p;->e:Lcom/crashlytics/android/internal/aQ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 672
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/crashlytics/android/p;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 674
    new-instance v1, Lcom/crashlytics/android/q;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/q;-><init>(Lcom/crashlytics/android/p;)V

    .line 682
    iget-object v2, p0, Lcom/crashlytics/android/p;->c:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 686
    iget-object v3, p0, Lcom/crashlytics/android/p;->b:Lcom/crashlytics/android/Crashlytics;

    const/4 v4, 0x5

    invoke-static {v3, v2, v4}, Lcom/crashlytics/android/Crashlytics;->a(Lcom/crashlytics/android/Crashlytics;FI)I

    move-result v3

    .line 688
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/crashlytics/android/p;->c:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 689
    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 690
    iget-object v5, p0, Lcom/crashlytics/android/p;->d:Lcom/crashlytics/android/X;

    invoke-virtual {v5}, Lcom/crashlytics/android/X;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 691
    iget-object v5, p0, Lcom/crashlytics/android/p;->c:Landroid/app/Activity;

    const v6, 0x1030044

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 692
    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 693
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 695
    new-instance v3, Landroid/widget/ScrollView;

    iget-object v5, p0, Lcom/crashlytics/android/p;->c:Landroid/app/Activity;

    invoke-direct {v3, v5}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 696
    iget-object v5, p0, Lcom/crashlytics/android/p;->b:Lcom/crashlytics/android/Crashlytics;

    const/16 v6, 0xe

    invoke-static {v5, v2, v6}, Lcom/crashlytics/android/Crashlytics;->a(Lcom/crashlytics/android/Crashlytics;FI)I

    move-result v5

    iget-object v6, p0, Lcom/crashlytics/android/p;->b:Lcom/crashlytics/android/Crashlytics;

    const/4 v7, 0x2

    invoke-static {v6, v2, v7}, Lcom/crashlytics/android/Crashlytics;->a(Lcom/crashlytics/android/Crashlytics;FI)I

    move-result v6

    iget-object v7, p0, Lcom/crashlytics/android/p;->b:Lcom/crashlytics/android/Crashlytics;

    const/16 v8, 0xa

    invoke-static {v7, v2, v8}, Lcom/crashlytics/android/Crashlytics;->a(Lcom/crashlytics/android/Crashlytics;FI)I

    move-result v7

    iget-object v8, p0, Lcom/crashlytics/android/p;->b:Lcom/crashlytics/android/Crashlytics;

    const/16 v9, 0xc

    invoke-static {v8, v2, v9}, Lcom/crashlytics/android/Crashlytics;->a(Lcom/crashlytics/android/Crashlytics;FI)I

    move-result v2

    invoke-virtual {v3, v5, v6, v7, v2}, Landroid/widget/ScrollView;->setPadding(IIII)V

    .line 698
    invoke-virtual {v3, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 702
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/crashlytics/android/p;->d:Lcom/crashlytics/android/X;

    invoke-virtual {v3}, Lcom/crashlytics/android/X;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/crashlytics/android/p;->d:Lcom/crashlytics/android/X;

    invoke-virtual {v3}, Lcom/crashlytics/android/X;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 705
    iget-object v1, p0, Lcom/crashlytics/android/p;->e:Lcom/crashlytics/android/internal/aQ;

    iget-boolean v1, v1, Lcom/crashlytics/android/internal/aQ;->d:Z

    if-eqz v1, :cond_0

    .line 706
    new-instance v1, Lcom/crashlytics/android/r;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/r;-><init>(Lcom/crashlytics/android/p;)V

    .line 713
    iget-object v2, p0, Lcom/crashlytics/android/p;->d:Lcom/crashlytics/android/X;

    invoke-virtual {v2}, Lcom/crashlytics/android/X;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 716
    :cond_0
    iget-object v1, p0, Lcom/crashlytics/android/p;->e:Lcom/crashlytics/android/internal/aQ;

    iget-boolean v1, v1, Lcom/crashlytics/android/internal/aQ;->f:Z

    if-eqz v1, :cond_1

    .line 717
    new-instance v1, Lcom/crashlytics/android/s;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/s;-><init>(Lcom/crashlytics/android/p;)V

    .line 725
    iget-object v2, p0, Lcom/crashlytics/android/p;->d:Lcom/crashlytics/android/X;

    invoke-virtual {v2}, Lcom/crashlytics/android/X;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 728
    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 729
    return-void
.end method
