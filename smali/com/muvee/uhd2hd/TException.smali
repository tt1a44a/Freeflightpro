.class public Lcom/muvee/uhd2hd/TException;
.super Ljava/lang/Exception;
.source "TException.java"


# instance fields
.field a:Lcom/muvee/uhd2hd/ETranscoderErrors;


# direct methods
.method public constructor <init>(Lcom/muvee/uhd2hd/ETranscoderErrors;)V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/muvee/uhd2hd/TException;->a:Lcom/muvee/uhd2hd/ETranscoderErrors;

    .line 10
    iput-object p1, p0, Lcom/muvee/uhd2hd/TException;->a:Lcom/muvee/uhd2hd/ETranscoderErrors;

    .line 11
    return-void
.end method


# virtual methods
.method public getCode()Lcom/muvee/uhd2hd/ETranscoderErrors;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/muvee/uhd2hd/TException;->a:Lcom/muvee/uhd2hd/ETranscoderErrors;

    return-object v0
.end method
