.class final Lcom/samsung/milk/milkvideo/utils/AlertUtils$3;
.super Ljava/lang/Object;
.source "AlertUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/utils/AlertUtils;->createOptionsAlertDialog(Landroid/content/Context;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog:Landroid/app/AlertDialog;

.field final synthetic val$optionsLength:I


# direct methods
.method constructor <init>(Landroid/app/AlertDialog;I)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/utils/AlertUtils$3;->val$dialog:Landroid/app/AlertDialog;

    iput p2, p0, Lcom/samsung/milk/milkvideo/utils/AlertUtils$3;->val$optionsLength:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 5
    .param p1, "_"    # Landroid/content/DialogInterface;

    .prologue
    .line 68
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/utils/AlertUtils$3;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 69
    .local v2, "options":Landroid/widget/ListView;
    if-eqz v2, :cond_1

    .line 70
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/samsung/milk/milkvideo/utils/AlertUtils$3;->val$optionsLength:I

    if-ge v0, v3, :cond_1

    .line 71
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 72
    .local v1, "option":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 73
    const/4 v3, 0x1

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 70
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    .end local v0    # "i":I
    .end local v1    # "option":Landroid/widget/TextView;
    :cond_1
    return-void
.end method
