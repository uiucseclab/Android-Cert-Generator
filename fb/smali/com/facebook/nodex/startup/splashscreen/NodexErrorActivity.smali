.class public Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity;
.super Lcom/facebook/nodex/startup/splashscreen/NodexBaseActivity;
.source "pa"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/Button;

.field private e:Lcom/facebook/nodex/resources/NodexResources;

.field private f:Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/facebook/nodex/startup/splashscreen/NodexBaseActivity;-><init>()V

    .line 59
    sget-object v0, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;->NONE:Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;

    iput-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity;->f:Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;

    return-void
.end method

.method private a()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 96
    invoke-virtual {p0}, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 101
    if-eqz v3, :cond_5

    .line 102
    const-string v0, "title"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 103
    const-string v0, "message"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    const-string v0, "exception"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 105
    const-string v4, "action"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 106
    const-string v4, "action"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;->valueOf(Ljava/lang/String;)Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity;->f:Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;

    .line 110
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 111
    iget-object v3, p0, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    iget-object v3, p0, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :goto_1
    if-eqz v1, :cond_2

    .line 118
    iget-object v2, p0, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    iget-object v2, p0, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :goto_2
    if-eqz v0, :cond_3

    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 125
    iget-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    iget-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    :goto_3
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity;->f:Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;

    sget-object v1, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;->NONE:Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;

    if-ne v0, v1, :cond_4

    .line 132
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 137
    :goto_4
    return-void

    .line 114
    :cond_1
    iget-object v2, p0, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 121
    :cond_2
    iget-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 128
    :cond_3
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 134
    :cond_4
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity;->d:Landroid/widget/Button;

    iget-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity;->e:Lcom/facebook/nodex/resources/NodexResources;

    iget-object v2, p0, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity;->f:Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;

    iget-object v2, v2, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;->resIdButtonText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/facebook/nodex/resources/NodexResources;->c(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_4

    :cond_5
    move-object v1, v0

    move-object v2, v0

    goto :goto_0
.end method

.method private static a(Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 144
    const-string v0, "exception"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 145
    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "NodexError activity was shown to user."

    invoke-direct {v1, v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "NodexErrorActivity (%s)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 148
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 149
    const-string v3, "soft_error_category"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-static {}, Lcom/facebook/acra/ErrorReporter;->getInstance()Lcom/facebook/acra/ErrorReporter;

    move-result-object v0

    .line 152
    invoke-virtual {v0, v1, v2}, Lcom/facebook/acra/ErrorReporter;->handleException(Ljava/lang/Throwable;Ljava/util/Map;)Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;

    .line 153
    return-void
.end method

.method private c()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-android.content.Context.startActivity"
        }
    .end annotation

    .prologue
    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "package:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 172
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 173
    invoke-virtual {p0, v1}, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity;->startActivity(Landroid/content/Intent;)V

    .line 174
    return-void
.end method

.method private d()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-android.content.Context.startActivity"
        }
    .end annotation

    .prologue
    .line 178
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.MANAGE_APPLICATIONS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity;->startActivity(Landroid/content/Intent;)V

    .line 179
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .prologue
    .line 156
    sget-object v0, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$2;->a:[I

    iget-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity;->f:Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;

    invoke-virtual {v1}, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 166
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity;->finish()V

    .line 167
    return-void

    .line 158
    :pswitch_0
    invoke-direct {p0}, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity;->c()V

    goto :goto_0

    .line 161
    :pswitch_1
    invoke-direct {p0}, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity;->d()V

    goto :goto_0

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_ACTIVITY_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v1, -0x3d148f6d

    invoke-static {v3, v0, v1}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;I)I

    move-result v1

    .line 62
    invoke-super {p0, p1}, Lcom/facebook/nodex/startup/splashscreen/NodexBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    new-instance v0, Lcom/facebook/nodex/resources/NodexResources;

    invoke-direct {v0, p0}, Lcom/facebook/nodex/resources/NodexResources;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity;->e:Lcom/facebook/nodex/resources/NodexResources;

    .line 66
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity;->e:Lcom/facebook/nodex/resources/NodexResources;

    const-string v2, "nodex_error_activity"

    invoke-virtual {v0, v2}, Lcom/facebook/nodex/resources/NodexResources;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity;->setContentView(I)V

    .line 68
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity;->e:Lcom/facebook/nodex/resources/NodexResources;

    const-string v2, "nodex_title"

    invoke-virtual {v0, v2}, Lcom/facebook/nodex/resources/NodexResources;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity;->a:Landroid/widget/TextView;

    .line 69
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity;->e:Lcom/facebook/nodex/resources/NodexResources;

    const-string v2, "nodex_message"

    invoke-virtual {v0, v2}, Lcom/facebook/nodex/resources/NodexResources;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity;->b:Landroid/widget/TextView;

    .line 70
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity;->e:Lcom/facebook/nodex/resources/NodexResources;

    const-string v2, "nodex_exception"

    invoke-virtual {v0, v2}, Lcom/facebook/nodex/resources/NodexResources;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity;->c:Landroid/widget/TextView;

    .line 71
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity;->e:Lcom/facebook/nodex/resources/NodexResources;

    const-string v2, "nodex_button"

    invoke-virtual {v0, v2}, Lcom/facebook/nodex/resources/NodexResources;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity;->d:Landroid/widget/Button;

    .line 72
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity;->d:Landroid/widget/Button;

    new-instance v2, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$1;

    invoke-direct {v2, p0}, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$1;-><init>(Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    invoke-direct {p0}, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity;->a()V

    .line 81
    if-nez p1, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity;->a(Landroid/content/Intent;)V

    .line 85
    :cond_0
    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_ACTIVITY_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v2, -0x5d1fcbde

    invoke-static {v3, v0, v2, v1}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;II)I

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/facebook/nodex/startup/splashscreen/NodexBaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 90
    invoke-virtual {p0, p1}, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity;->setIntent(Landroid/content/Intent;)V

    .line 91
    invoke-static {p1}, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity;->a(Landroid/content/Intent;)V

    .line 92
    invoke-direct {p0}, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity;->a()V

    .line 93
    return-void
.end method
