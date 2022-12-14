import React, { useState, useEffect } from "react";
import ApplicantList from "./ApplicantList.js";
import ApplicantProfile from "./ApplicantProfile";

function ApplicantPage() {
  const [applicants, setApplicants] = useState([]);
  const [dogs, setDogs] = useState([]);
  const [id, setId] = useState(null);

  useEffect(() => {
    fetch("/applicants")
      .then((res) => res.json())
      .then((applicants) => setApplicants(applicants));
  }, []);

  useEffect(() => {
    fetch("/dogs")
      .then((res) => res.json())
      .then((dogs) => setDogs(dogs));
  }, []);

  const selectedApplicant = applicants.find((a) => a.id === id);


  return (
    <div className="pendingApp">
      <h2 id="pendingAppHeader">Pending Applications</h2>
      <ApplicantProfile
        applicant={selectedApplicant}
        dogs={dogs}
      />
      <ApplicantList setId={setId} applicants={applicants} />
    </div>
  );
}

export default ApplicantPage;
