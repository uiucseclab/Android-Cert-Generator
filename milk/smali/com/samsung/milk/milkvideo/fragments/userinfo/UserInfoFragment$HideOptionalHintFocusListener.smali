.class public Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$HideOptionalHintFocusListener;
.super Ljava/lang/Object;
.source "UserInfoFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HideOptionalHintFocusListener"
.end annotation


# instance fields
.field private field:Landroid/widget/EditText;

.field private hint:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;Ljava/lang/String;Landroid/widget/EditText;)V
    .locals 0
    .param p2, "hint"    # Ljava/lang/String;
    .param p3, "field"    # Landroid/widget/EditText;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$HideOptionalHintFocusListener;->this$0:Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    iput-object p2, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$HideOptionalHintFocusListener;->hint:Ljava/lang/String;

    .line 319
    iput-object p3, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$HideOptionalHintFocusListener;->field:Landroid/widget/EditText;

    .line 320
    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 324
    if-eqz p2, :cond_0

    .line 325
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$HideOptionalHintFocusListener;->field:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 329
    :goto_0
    return-void

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$HideOptionalHintFocusListener;->field:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment$HideOptionalHintFocusListener;->hint:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/milk/milkvideo/utils/UiUtils;->makeOptionalHintTextSpan(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
