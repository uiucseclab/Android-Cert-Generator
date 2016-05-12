.class public Lcom/samsung/milk/milkvideo/events/LoginSuccessEvent;
.super Ljava/lang/Object;
.source "LoginSuccessEvent.java"


# instance fields
.field private final accountType:Ljava/lang/String;

.field private final session:Lcom/samsung/milk/milkvideo/models/Session;


# direct methods
.method public constructor <init>(Lcom/samsung/milk/milkvideo/models/Session;Ljava/lang/String;)V
    .locals 0
    .param p1, "session"    # Lcom/samsung/milk/milkvideo/models/Session;
    .param p2, "accountType"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/events/LoginSuccessEvent;->session:Lcom/samsung/milk/milkvideo/models/Session;

    .line 11
    iput-object p2, p0, Lcom/samsung/milk/milkvideo/events/LoginSuccessEvent;->accountType:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/events/LoginSuccessEvent;->accountType:Ljava/lang/String;

    return-object v0
.end method

.method public getSession()Lcom/samsung/milk/milkvideo/models/Session;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/events/LoginSuccessEvent;->session:Lcom/samsung/milk/milkvideo/models/Session;

    return-object v0
.end method
