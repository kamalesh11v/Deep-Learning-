// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StrayHelp {
    struct Report {
        string reportId;
        uint256 timestamp;
        string location;
        string imageUrl;
        string prediction;
        uint256 confidence;
        string classifiedAs;
        string urgencyLevel;
        bool ngoAlertSent;
        uint256 ngoAlertTimestamp;
        string caseStatus;
    }

    mapping(string => Report) public reports;

    function storeReport(
        string memory _reportId,
        uint256 _timestamp,
        string memory _location,
        string memory _imageUrl,
        string memory _prediction,
        uint256 _confidence,
        string memory _classifiedAs,
        string memory _urgencyLevel,
        bool _ngoAlertSent,
        uint256 _ngoAlertTimestamp,
        string memory _caseStatus
    ) public {
        reports[_reportId] = Report({
            reportId: _reportId,
            timestamp: _timestamp,
            location: _location,
            imageUrl: _imageUrl,
            prediction: _prediction,
            confidence: _confidence,
            classifiedAs: _classifiedAs,
            urgencyLevel: _urgencyLevel,
            ngoAlertSent: _ngoAlertSent,
            ngoAlertTimestamp: _ngoAlertTimestamp,
            caseStatus: _caseStatus
        });
    }

    function getReport(string memory _reportId) public view returns (
        string memory,
        uint256,
        string memory,
        string memory,
        string memory,
        uint256,
        string memory,
        string memory,
        bool,
        uint256,
        string memory
    ) {
        Report memory report = reports[_reportId];
        return (
            report.reportId,
            report.timestamp,
            report.location,
            report.imageUrl,
            report.prediction,
            report.confidence,
            report.classifiedAs,
            report.urgencyLevel,
            report.ngoAlertSent,
            report.ngoAlertTimestamp,
            report.caseStatus
        );
    }
}