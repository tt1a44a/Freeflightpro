.class public Lcom/muvee/dsg/mmap/api/Version;
.super Ljava/lang/Object;
.source "Version.java"


# static fields
.field public static MAMS_JAR_VERSION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-string v0, "MAMS_JAR_VERSION_20170122_1822PM"

    sput-object v0, Lcom/muvee/dsg/mmap/api/Version;->MAMS_JAR_VERSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 22
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v1, Lcom/muvee/dsg/mmap/api/Version;->MAMS_JAR_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static native nativeVersion()Ljava/lang/String;
.end method
