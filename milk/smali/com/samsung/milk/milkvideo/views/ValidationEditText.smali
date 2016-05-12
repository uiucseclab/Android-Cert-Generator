.class public Lcom/samsung/milk/milkvideo/views/ValidationEditText;
.super Landroid/widget/EditText;
.source "ValidationEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/milk/milkvideo/views/ValidationEditText$OnValidationPerformedListener;,
        Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;
    }
.end annotation


# static fields
.field private static final STATE_FAILURE:[I

.field private static final STATE_SUCCESS:[I

.field public static TEXT_CHANGE_TIMEOUT:I


# instance fields
.field private defaultText:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private hint:Ljava/lang/String;

.field private previousText:Ljava/lang/String;

.field private state:Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;

.field private validateRunnable:Ljava/lang/Runnable;

.field private validationPerformedListener:Lcom/samsung/milk/milkvideo/views/ValidationEditText$OnValidationPerformedListener;

.field private validationRule:Lcom/samsung/milk/milkvideo/validations/ValidationRule;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-array v0, v3, [I

    const v1, 0x7f01005c

    aput v1, v0, v2

    sput-object v0, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->STATE_SUCCESS:[I

    .line 16
    new-array v0, v3, [I

    const v1, 0x7f01005d

    aput v1, v0, v2

    sput-object v0, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->STATE_FAILURE:[I

    .line 33
    const/16 v0, 0x3e8

    sput v0, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->TEXT_CHANGE_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->handler:Landroid/os/Handler;

    .line 37
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->init()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->handler:Landroid/os/Handler;

    .line 42
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->init()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->handler:Landroid/os/Handler;

    .line 47
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->init()V

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/milk/milkvideo/views/ValidationEditText;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/views/ValidationEditText;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->previousText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/samsung/milk/milkvideo/views/ValidationEditText;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/views/ValidationEditText;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->previousText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/milk/milkvideo/views/ValidationEditText;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/views/ValidationEditText;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->hint:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/milk/milkvideo/views/ValidationEditText;)Lcom/samsung/milk/milkvideo/validations/ValidationRule;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/views/ValidationEditText;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->validationRule:Lcom/samsung/milk/milkvideo/validations/ValidationRule;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/milk/milkvideo/views/ValidationEditText;)Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/views/ValidationEditText;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->state:Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/milk/milkvideo/views/ValidationEditText;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/views/ValidationEditText;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->validateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/milk/milkvideo/views/ValidationEditText;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/views/ValidationEditText;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;->DEFAULT:Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->state:Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;

    .line 52
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->hint:Ljava/lang/String;

    .line 53
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->setupListeners()V

    .line 55
    new-instance v0, Lcom/samsung/milk/milkvideo/views/ValidationEditText$1;

    invoke-direct {v0, p0}, Lcom/samsung/milk/milkvideo/views/ValidationEditText$1;-><init>(Lcom/samsung/milk/milkvideo/views/ValidationEditText;)V

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->validateRunnable:Ljava/lang/Runnable;

    .line 61
    return-void

    .line 52
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private setupListeners()V
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lcom/samsung/milk/milkvideo/views/ValidationEditText$2;

    invoke-direct {v0, p0}, Lcom/samsung/milk/milkvideo/views/ValidationEditText$2;-><init>(Lcom/samsung/milk/milkvideo/views/ValidationEditText;)V

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 94
    new-instance v0, Lcom/samsung/milk/milkvideo/views/ValidationEditText$3;

    invoke-direct {v0, p0}, Lcom/samsung/milk/milkvideo/views/ValidationEditText$3;-><init>(Lcom/samsung/milk/milkvideo/views/ValidationEditText;)V

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 119
    return-void
.end method


# virtual methods
.method public getDefaultText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->defaultText:Ljava/lang/String;

    return-object v0
.end method

.method public getValidationState()Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->state:Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;

    return-object v0
.end method

.method public hasValidationError()Z
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->state:Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;

    sget-object v1, Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;->FAILURE:Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 3
    .param p1, "extraSpace"    # I

    .prologue
    .line 133
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/EditText;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 134
    .local v0, "drawableState":[I
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->state:Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;

    sget-object v2, Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;->SUCCESS:Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;

    if-ne v1, v2, :cond_0

    .line 135
    sget-object v1, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->STATE_SUCCESS:[I

    invoke-static {v0, v1}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->mergeDrawableStates([I[I)[I

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->state:Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;

    sget-object v2, Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;->FAILURE:Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;

    if-ne v1, v2, :cond_1

    .line 138
    sget-object v1, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->STATE_FAILURE:[I

    invoke-static {v0, v1}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->mergeDrawableStates([I[I)[I

    .line 140
    :cond_1
    return-object v0
.end method

.method public setDefaultHint(Ljava/lang/String;)V
    .locals 0
    .param p1, "hint"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->hint:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setDefaultText(Ljava/lang/String;)V
    .locals 0
    .param p1, "defaultText"    # Ljava/lang/String;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->defaultText:Ljava/lang/String;

    .line 153
    invoke-virtual {p0, p1}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->setText(Ljava/lang/CharSequence;)V

    .line 154
    return-void
.end method

.method public setValidationPerformedListener(Lcom/samsung/milk/milkvideo/views/ValidationEditText$OnValidationPerformedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/milk/milkvideo/views/ValidationEditText$OnValidationPerformedListener;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->validationPerformedListener:Lcom/samsung/milk/milkvideo/views/ValidationEditText$OnValidationPerformedListener;

    .line 162
    return-void
.end method

.method public setValidationRule(Lcom/samsung/milk/milkvideo/validations/ValidationRule;)V
    .locals 0
    .param p1, "rule"    # Lcom/samsung/milk/milkvideo/validations/ValidationRule;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->validationRule:Lcom/samsung/milk/milkvideo/validations/ValidationRule;

    .line 145
    return-void
.end method

.method public setValidationState(Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;)V
    .locals 1
    .param p1, "state"    # Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->state:Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;

    if-eq v0, p1, :cond_0

    .line 73
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->state:Lcom/samsung/milk/milkvideo/views/ValidationEditText$ValidationState;

    .line 74
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->refreshDrawableState()V

    .line 76
    :cond_0
    return-void
.end method

.method public validate()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->validationRule:Lcom/samsung/milk/milkvideo/validations/ValidationRule;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->validateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 124
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->validationRule:Lcom/samsung/milk/milkvideo/validations/ValidationRule;

    invoke-virtual {v0, p0}, Lcom/samsung/milk/milkvideo/validations/ValidationRule;->validate(Lcom/samsung/milk/milkvideo/views/ValidationEditText;)V

    .line 125
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->validationPerformedListener:Lcom/samsung/milk/milkvideo/views/ValidationEditText$OnValidationPerformedListener;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->validationPerformedListener:Lcom/samsung/milk/milkvideo/views/ValidationEditText$OnValidationPerformedListener;

    invoke-interface {v0}, Lcom/samsung/milk/milkvideo/views/ValidationEditText$OnValidationPerformedListener;->onValidationPerformed()V

    .line 129
    :cond_0
    return-void
.end method
