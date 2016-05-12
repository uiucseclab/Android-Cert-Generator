.class public Lcom/samsung/milk/milkvideo/utils/AlertUtils;
.super Ljava/lang/Object;
.source "AlertUtils.java"


# static fields
.field public static final BUTTON_TEXT_SIZE:F = 14.0f

.field public static final MESSAGE_TEXT_SIZE:F = 20.0f

.field public static final OPTION_TEXT_SIZE:F = 20.0f

.field public static final TITLE_PADDING:I = 0x32

.field public static final TITLE_TEXT_SIZE:F = 22.0f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createConfirmCancelAlertDialog(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "onConfirm"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "onCancel"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 19
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040013

    invoke-virtual {v1, v2, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    invoke-virtual {v1, v2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 24
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    new-instance v1, Lcom/samsung/milk/milkvideo/utils/AlertUtils$1;

    invoke-direct {v1, v0}, Lcom/samsung/milk/milkvideo/utils/AlertUtils$1;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 33
    return-object v0
.end method

.method public static createNotificationAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "confirmLabel"    # Ljava/lang/String;
    .param p3, "onConfirm"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 37
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 41
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    new-instance v1, Lcom/samsung/milk/milkvideo/utils/AlertUtils$2;

    invoke-direct {v1, v0}, Lcom/samsung/milk/milkvideo/utils/AlertUtils$2;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 49
    return-object v0
.end method

.method public static createOptionsAlertDialog(Landroid/content/Context;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "itemsId"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "onClick"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    const/4 v6, 0x1

    const/16 v5, 0x32

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    array-length v1, v3

    .line 55
    .local v1, "optionsLength":I
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 56
    .local v2, "titleText":Landroid/widget/TextView;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1060012

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 57
    const/high16 v3, 0x41b00000    # 22.0f

    invoke-virtual {v2, v6, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 58
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 61
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, p1, p3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 65
    .local v0, "dialog":Landroid/app/AlertDialog;
    new-instance v3, Lcom/samsung/milk/milkvideo/utils/AlertUtils$3;

    invoke-direct {v3, v0, v1}, Lcom/samsung/milk/milkvideo/utils/AlertUtils$3;-><init>(Landroid/app/AlertDialog;I)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 79
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 80
    return-object v0
.end method
