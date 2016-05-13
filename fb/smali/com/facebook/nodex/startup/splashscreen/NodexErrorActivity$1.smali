.class Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$1;
.super Ljava/lang/Object;
.source "pa"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity;


# direct methods
.method constructor <init>(Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$1;->a:Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->UI_INPUT_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v1, -0x10dc991c

    invoke-static {v3, v0, v1}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;I)I

    move-result v0

    .line 75
    iget-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$1;->a:Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity;

    invoke-virtual {v1}, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity;->b()V

    .line 76
    sget-object v1, Lcom/facebook/loom/logger/LogEntry$EntryType;->UI_INPUT_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v2, -0x15aec313

    invoke-static {v3, v1, v2, v0}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;II)I

    return-void
.end method
