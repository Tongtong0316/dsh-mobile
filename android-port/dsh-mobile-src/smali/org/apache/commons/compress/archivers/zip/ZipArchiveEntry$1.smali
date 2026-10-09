.class Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$1;
.super Ljava/lang/Object;
.source "ZipArchiveEntry.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/ExtraFieldParsingBehavior;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->parseExtraFields([BZLorg/apache/commons/compress/archivers/zip/ExtraFieldParsingBehavior;)[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

.field final synthetic val$parsingBehavior:Lorg/apache/commons/compress/archivers/zip/ExtraFieldParsingBehavior;


# direct methods
.method constructor <init>(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/archivers/zip/ExtraFieldParsingBehavior;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1109
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$1;->this$0:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$1;->val$parsingBehavior:Lorg/apache/commons/compress/archivers/zip/ExtraFieldParsingBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .locals 2
    .param p1, "headerId"    # Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1112
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$1;->this$0:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/util/function/Function;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 1113
    .local v0, "field":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$1;->val$parsingBehavior:Lorg/apache/commons/compress/archivers/zip/ExtraFieldParsingBehavior;

    invoke-interface {v1, p1}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldParsingBehavior;->createExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public fill(Lorg/apache/commons/compress/archivers/zip/ZipExtraField;[BIIZ)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .locals 6
    .param p1, "field"    # Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .param p2, "data"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I
    .param p5, "local"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 1118
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$1;->val$parsingBehavior:Lorg/apache/commons/compress/archivers/zip/ExtraFieldParsingBehavior;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldParsingBehavior;->fill(Lorg/apache/commons/compress/archivers/zip/ZipExtraField;[BIIZ)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    return-object v0
.end method

.method public onUnparseableExtraField([BIIZI)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .locals 6
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "local"    # Z
    .param p5, "claimedLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 1124
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$1;->val$parsingBehavior:Lorg/apache/commons/compress/archivers/zip/ExtraFieldParsingBehavior;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldParsingBehavior;->onUnparseableExtraField([BIIZI)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    return-object v0
.end method
