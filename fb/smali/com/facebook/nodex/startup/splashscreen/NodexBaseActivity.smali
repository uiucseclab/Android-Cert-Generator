.class public Lcom/facebook/nodex/startup/splashscreen/NodexBaseActivity;
.super Landroid/app/Activity;
.source "pixelFormat="


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_ACTIVITY_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v1, 0x58af3d20

    invoke-static {v4, v0, v1}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;I)I

    move-result v0

    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-static {}, Lcom/facebook/acra/ErrorReporter;->getInstance()Lcom/facebook/acra/ErrorReporter;

    move-result-object v1

    const-string v2, "app_backgrounded"

    const-string v3, "false"

    invoke-virtual {v1, v2, v3}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    sget-object v1, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_ACTIVITY_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v2, -0x2931a418

    invoke-static {v4, v1, v2, v0}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;II)I

    return-void
.end method

.method protected onStart()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_ACTIVITY_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v1, 0x2600000d

    invoke-static {v4, v0, v1}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;I)I

    move-result v0

    .line 25
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 26
    invoke-static {}, Lcom/facebook/acra/ErrorReporter;->getInstance()Lcom/facebook/acra/ErrorReporter;

    move-result-object v1

    const-string v2, "app_backgrounded"

    const-string v3, "false"

    invoke-virtual {v1, v2, v3}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    sget-object v1, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_ACTIVITY_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v2, -0x547d61cc

    invoke-static {v4, v1, v2, v0}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;II)I

    return-void
.end method

.method protected onStop()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_ACTIVITY_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v1, 0x7cb54d34

    invoke-static {v4, v0, v1}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;I)I

    move-result v0

    .line 31
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 32
    invoke-static {}, Lcom/facebook/acra/ErrorReporter;->getInstance()Lcom/facebook/acra/ErrorReporter;

    move-result-object v1

    const-string v2, "app_backgrounded"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    sget-object v1, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_ACTIVITY_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v2, 0x112f4e88

    invoke-static {v4, v1, v2, v0}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;II)I

    return-void
.end method
